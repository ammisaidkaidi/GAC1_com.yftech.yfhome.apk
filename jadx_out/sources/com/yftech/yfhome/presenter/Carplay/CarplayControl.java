package com.yftech.yfhome.presenter.Carplay;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.autochips.carplay.CarplayAppState;
import com.autochips.carplay.CarplayAudioInfo;
import com.autochips.carplay.CarplayCall;
import com.autochips.carplay.CarplayDevice;
import com.autochips.carplay.CarplayManager;
import com.autochips.carplay.CarplayPlaybackStatus;
import com.autochips.carplay.CarplayResourceState;
import com.autochips.carplay.PlaybackStatusInfo;
import com.yftech.yfhome.BuildConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CarplayControl {
    private static final int CHECK_CARPLAY_SERVICE_TIME = 3000;
    private static final int MSG_CHECK_CARPLAY_SERVICE = 0;
    private static final String TAG = "CarplayControl";
    private static volatile CarplayControl mInstance;
    private String mArtist;
    private List<CarplayDevice> mCarplayConnectedDeviceList;
    private ICarplayListener mCarplayListener;
    private CarplayManager mCarplayManager;
    private Context mContext;
    private CarplayDevice mCurrentCarplayDevice;
    private boolean mIsPlaying;
    private int mProgress;
    private String mTitle;
    private int mTotalDuration;
    private int mConnectStatus = 0;
    private int screenVisible = 2;
    private CarplayManager.CarplayCallback mCarplayCallback = new CarplayManager.CarplayCallback() { // from class: com.yftech.yfhome.presenter.Carplay.CarplayControl.1
        public void onAppStateChanged(CarplayAppState carplayAppState) {
            Log.i(CarplayControl.TAG, "onStreamStateChanged carplayAppState:" + carplayAppState.toString());
        }

        public void onAudioInfo(int i, int i2, CarplayAudioInfo carplayAudioInfo) {
            Log.i(CarplayControl.TAG, "onAudioInfo(" + i + "," + i2 + "," + carplayAudioInfo.toString() + ")");
        }

        public void onCallStateChanged(CarplayCall carplayCall) {
            Log.i(CarplayControl.TAG, "onCallStateChanged " + carplayCall.toString());
        }

        public void onConnectionStateChanged(CarplayDevice carplayDevice, int i) {
            Log.i(CarplayControl.TAG, "onConnectionStateChanged carplayDevice:" + carplayDevice.toString() + ", state:" + i);
            CarplayControl.this.mCarplayConnectedDeviceList = CarplayControl.this.mCarplayManager.getConnectedDevices();
            if (CarplayControl.this.mCarplayConnectedDeviceList == null || CarplayControl.this.mCarplayConnectedDeviceList.size() <= 0) {
                CarplayControl.this.mConnectStatus = i;
                CarplayControl.this.mCurrentCarplayDevice = carplayDevice;
            } else {
                CarplayControl.this.mCurrentCarplayDevice = (CarplayDevice) CarplayControl.this.mCarplayConnectedDeviceList.get(0);
                CarplayControl.this.mConnectStatus = CarplayControl.this.mCarplayManager.getConnectionState(CarplayControl.this.mCurrentCarplayDevice);
            }
            if (CarplayControl.this.mCarplayListener != null) {
                CarplayControl.this.mCarplayListener.onCarplayConnectChanged(CarplayControl.this.mConnectStatus);
            }
        }

        public void onDeviceBluetoothID(String str) {
            Log.i(CarplayControl.TAG, "onDeviceBluetoothID s:" + str);
        }

        public void onEnableStateChanged(int i, int i2) {
            Log.i(CarplayControl.TAG, "onEnableStateChanged(" + i + "," + i2 + ")");
        }

        public void onPlaybackStatusChanged(CarplayDevice carplayDevice, PlaybackStatusInfo playbackStatusInfo) {
            CarplayPlaybackStatus playingStatus;
            Log.i(CarplayControl.TAG, "onPlaybackStatusChanged device:" + carplayDevice.toString() + ", pbInfo:" + playbackStatusInfo.toString());
            CarplayControl.this.mCarplayConnectedDeviceList = CarplayControl.this.mCarplayManager.getConnectedDevices();
            if (CarplayControl.this.mCarplayConnectedDeviceList == null || CarplayControl.this.mCarplayConnectedDeviceList.size() <= 0) {
                return;
            }
            CarplayControl.this.mCurrentCarplayDevice = (CarplayDevice) CarplayControl.this.mCarplayConnectedDeviceList.get(0);
            if (playbackStatusInfo.isPlaybackStatusValid()) {
                CarplayControl.this.mIsPlaying = 1 == playbackStatusInfo.getPlaybackStatus();
                if (CarplayControl.this.mCarplayListener != null) {
                    CarplayControl.this.mCarplayListener.onCarplayPlayingChanged(CarplayControl.this.mIsPlaying);
                }
            }
            if (((playbackStatusInfo.getPlaybackInfo() & 1) != 0 || (playbackStatusInfo.getPlaybackInfo() & 4) != 0) && CarplayControl.this.mCarplayManager != null) {
                CarplayControl.this.mTitle = CarplayControl.this.mCarplayManager.getPlayingInfo(CarplayControl.this.mCurrentCarplayDevice, 1);
                CarplayControl.this.mArtist = CarplayControl.this.mCarplayManager.getPlayingInfo(CarplayControl.this.mCurrentCarplayDevice, 4);
                if (CarplayControl.this.mCarplayListener != null) {
                    CarplayControl.this.mCarplayListener.onCarplayMusicID3Changed(CarplayControl.this.mTitle, CarplayControl.this.mArtist);
                }
            }
            if (!playbackStatusInfo.isTrackMsOffsetValid() || CarplayControl.this.mCarplayManager == null || (playingStatus = CarplayControl.this.mCarplayManager.getPlayingStatus(CarplayControl.this.mCurrentCarplayDevice)) == null) {
                return;
            }
            CarplayControl.this.mTotalDuration = playingStatus.getPlayingTrackLen();
            CarplayControl.this.mProgress = playingStatus.getPlayingTrackPos();
            if (CarplayControl.this.mCarplayListener != null) {
                CarplayControl.this.mCarplayListener.onCarplayProgressChanged(CarplayControl.this.mProgress);
            }
        }

        public void onRequestAccessoryUI(int i) {
            Log.i(CarplayControl.TAG, "onRequestAccessoryUI(" + i + ")");
        }

        public void onResourceStateChanged(CarplayResourceState carplayResourceState) {
            Log.i(CarplayControl.TAG, "onResourceStateChanged carplayResourceState:" + carplayResourceState.toString());
            if (CarplayControl.this.screenVisible == carplayResourceState.getMainScreen()) {
                return;
            }
            if (carplayResourceState.getMainScreen() == 1) {
                if (CarplayControl.this.mCarplayListener != null) {
                    CarplayControl.this.mCarplayListener.onResourceStateChanged(true);
                }
                CarplayControl.this.screenVisible = 1;
            } else if (carplayResourceState.getMainScreen() == 2) {
                if (CarplayControl.this.mCarplayListener != null) {
                    CarplayControl.this.mCarplayListener.onResourceStateChanged(false);
                }
                CarplayControl.this.screenVisible = 2;
            }
        }

        public void onStreamStateChanged(int i, int i2, int i3) {
            Log.i(CarplayControl.TAG, "onStreamStateChanged(" + i + "," + i2 + "," + i3 + ")");
        }
    };
    private Handler mHandle = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.presenter.Carplay.CarplayControl.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            Log.i(CarplayControl.TAG, "MSG_CHECK_CARPLAY_SERVICE");
            if (CarplayControl.this.getCarplayManager() == null) {
                if (CarplayControl.this.mHandle.hasMessages(0)) {
                    CarplayControl.this.mHandle.removeMessages(0);
                }
                CarplayControl.this.mHandle.sendEmptyMessageDelayed(0, 3000L);
            }
        }
    };

    private CarplayControl(Context context) {
        this.mContext = context;
        if (getCarplayManager() == null) {
            if (this.mHandle.hasMessages(0)) {
                this.mHandle.removeMessages(0);
            }
            this.mHandle.sendEmptyMessageDelayed(0, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CarplayManager getCarplayManager() {
        this.mCarplayManager = CarplayManager.getDefaultManager();
        if (this.mCarplayManager != null) {
            this.mCarplayManager.registerCallback(this.mCarplayCallback, this.mHandle);
            this.mCarplayConnectedDeviceList = this.mCarplayManager.getConnectedDevices();
            if (this.mCarplayConnectedDeviceList != null && this.mCarplayConnectedDeviceList.size() > 0) {
                this.mCurrentCarplayDevice = this.mCarplayConnectedDeviceList.get(0);
                this.mConnectStatus = this.mCarplayManager.getConnectionState(this.mCurrentCarplayDevice);
            }
            if (this.mCurrentCarplayDevice != null) {
                this.mTitle = this.mCarplayManager.getPlayingInfo(this.mCurrentCarplayDevice, 1);
                this.mArtist = this.mCarplayManager.getPlayingInfo(this.mCurrentCarplayDevice, 4);
                if (this.mCarplayListener != null) {
                    this.mCarplayListener.onCarplayConnectChanged(this.mConnectStatus);
                    this.mCarplayListener.onCarplayMusicID3Changed(this.mTitle, this.mArtist);
                }
                CarplayPlaybackStatus playingStatus = this.mCarplayManager.getPlayingStatus(this.mCurrentCarplayDevice);
                if (playingStatus != null) {
                    this.mTotalDuration = playingStatus.getPlayingTrackLen();
                    this.mProgress = playingStatus.getPlayingTrackPos();
                    this.mIsPlaying = 1 == playingStatus.getPlayingTrackStatus();
                    if (this.mCarplayListener != null) {
                        this.mCarplayListener.onCarplayPlayingChanged(this.mIsPlaying);
                        this.mCarplayListener.onCarplayProgressChanged(this.mProgress);
                    }
                }
            }
        }
        return this.mCarplayManager;
    }

    public static CarplayControl getInstance(Context context) {
        if (mInstance == null) {
            synchronized (CarplayControl.class) {
                if (mInstance == null) {
                    mInstance = new CarplayControl(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    public String getArtist() {
        if (this.mCarplayManager != null) {
            this.mCarplayConnectedDeviceList = this.mCarplayManager.getConnectedDevices();
            if (this.mCarplayConnectedDeviceList != null && this.mCarplayConnectedDeviceList.size() > 0) {
                this.mCurrentCarplayDevice = this.mCarplayConnectedDeviceList.get(0);
                if (this.mCurrentCarplayDevice != null) {
                    this.mArtist = this.mCarplayManager.getPlayingInfo(this.mCurrentCarplayDevice, 4);
                }
            }
        }
        Log.i(TAG, "getArtist:" + this.mArtist);
        return this.mArtist;
    }

    public int getConnectStatus() {
        Log.i(TAG, "getConnectStatus:" + this.mConnectStatus);
        return this.mConnectStatus;
    }

    public int getProgress() {
        Log.i(TAG, "getProgress:" + this.mProgress);
        return this.mProgress;
    }

    public String getTitle() {
        if (this.mCarplayManager != null) {
            this.mCarplayConnectedDeviceList = this.mCarplayManager.getConnectedDevices();
            if (this.mCarplayConnectedDeviceList != null && this.mCarplayConnectedDeviceList.size() > 0) {
                this.mCurrentCarplayDevice = this.mCarplayConnectedDeviceList.get(0);
                if (this.mCurrentCarplayDevice != null) {
                    this.mTitle = this.mCarplayManager.getPlayingInfo(this.mCurrentCarplayDevice, 1);
                }
            }
        }
        Log.i(TAG, "getTitle:" + this.mTitle);
        return this.mTitle;
    }

    public int getTotalDuration() {
        Log.i(TAG, "getTotalDuration:" + this.mTotalDuration);
        return this.mTotalDuration;
    }

    public boolean isPlaying() {
        Log.i(TAG, "isPlaying:" + this.mIsPlaying);
        return this.mIsPlaying;
    }

    public int next() {
        int iUpdateMedia;
        if (this.mCarplayManager != null) {
            iUpdateMedia = this.mCarplayManager.updateMedia(4);
            this.mCarplayManager.updateMedia(0);
        } else {
            iUpdateMedia = -1;
        }
        Log.i(TAG, "next ret:" + iUpdateMedia);
        return iUpdateMedia;
    }

    public void openCarplayMediaView() {
        Log.i(TAG, "openCarplayMediaView");
        if (this.mCarplayManager != null) {
            this.mCarplayManager.requestDeviceUI(4, BuildConfig.FLAVOR);
        }
    }

    public int pause() {
        int iUpdateMedia;
        if (this.mCarplayManager != null) {
            iUpdateMedia = this.mCarplayManager.updateMedia(2);
            this.mCarplayManager.updateMedia(0);
        } else {
            iUpdateMedia = -1;
        }
        Log.i(TAG, "pause ret:" + iUpdateMedia);
        return iUpdateMedia;
    }

    public int play() {
        int iUpdateMedia;
        if (this.mCarplayManager != null) {
            iUpdateMedia = this.mCarplayManager.updateMedia(1);
            this.mCarplayManager.updateMedia(0);
        } else {
            iUpdateMedia = -1;
        }
        Log.i(TAG, "play ret:" + iUpdateMedia);
        return iUpdateMedia;
    }

    public int previous() {
        int iUpdateMedia;
        if (this.mCarplayManager != null) {
            iUpdateMedia = this.mCarplayManager.updateMedia(5);
            this.mCarplayManager.updateMedia(0);
        } else {
            iUpdateMedia = -1;
        }
        Log.i(TAG, "previous ret:" + iUpdateMedia);
        return iUpdateMedia;
    }

    public void setCarplayListener(ICarplayListener iCarplayListener) {
        this.mCarplayListener = iCarplayListener;
    }
}
