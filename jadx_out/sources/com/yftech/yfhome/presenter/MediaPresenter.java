package com.yftech.yfhome.presenter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadata;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothMusicCallback;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.car.phonelink.CarPhoneLinkMediaManager;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.car.phonelink.PhoneLinkMediaInfo;
import com.yftech.yfhome.BuildConfig;
import com.yftech.yfhome.R;
import com.yftech.yfhome.presenter.Carplay.CarplayControl;
import com.yftech.yfhome.presenter.Carplay.ICarplayListener;
import com.yftech.yfhome.presenter.carlife.CarlifeConnectStatus;
import com.yftech.yfhome.utils.SharedPrefsUtil;
import com.yftech.yfhome.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class MediaPresenter {
    private static final int REFRESH_DELAY_TIME = 1500;
    public static final int SOURCE_BT_MUSIC = 2;
    public static final int SOURCE_CARLIFE = 3;
    public static final int SOURCE_CARPLAY = 4;
    public static final int SOURCE_EASYCONN = 8;
    public static final int SOURCE_HICAR = 5;
    public static final int SOURCE_NULL = -1;
    public static final int SOURCE_RADIO = 7;
    public static final int SOURCE_USB = 6;
    public static final int SOURCE_USB_1 = 0;
    public static final int SOURCE_USB_2 = 1;
    private static final String TAG = "MediaPresenter";
    public static final int USB_INDEX_1 = 0;
    public static final int USB_INDEX_2 = 1;
    public static final int USB_STATUS_EXIST = 1;
    public static final int USB_STATUS_INVALID_MUSIC = 3;
    public static final int USB_STATUS_NO_EXIST = 0;
    public static final int USB_STATUS_SCAN = 2;
    private static volatile MediaPresenter mInstance;
    private int mBTMusicConnectStatus;
    private CarBluetoothManager mCarBluetoothManager;
    private CarMediaDataManager mCarMediaDataManager;
    private CarMusicManager mCarMusicManager;
    private CarplayControl mCarplayControl;
    private Context mContext;
    private int mCurrentMediaSource;
    private int mCycleMode;
    private boolean mIsCarlifeConnect;
    private boolean mIsCarplayConnect;
    private boolean mIsPlaying;
    private String mMusicFilePath;
    private OnChangedMediaListener mOnChangedMediaListener;
    private String mSinger;
    private String mTitle;
    private boolean isAvailable = false;
    private int mProgress = 0;
    private boolean mIsPlayError = false;
    public boolean mHiCarReConnected = false;
    public boolean isMusicSourceChangedByUser = false;
    private Handler mHandle = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.presenter.MediaPresenter.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    };
    private CarAudioManager.CarAudioCallback mCarAudioCallback = new AnonymousClass2();
    private CarBluetoothMusicCallback mCarBluetoothMusicCallback = new CarBluetoothMusicCallback() { // from class: com.yftech.yfhome.presenter.MediaPresenter.3
        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
            String str = MediaPresenter.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onBluetoothAvrcpConnectStateChanged mCurrentMediaSource:");
            sb.append(MediaPresenter.this.mCurrentMediaSource);
            sb.append(", state:");
            sb.append(i);
            sb.append(", bluetoothDevice:");
            sb.append(bluetoothDevice == null ? null : bluetoothDevice.toString());
            Log.i(str, sb.toString());
            MediaPresenter.this.mBTMusicConnectStatus = i;
            if (MediaPresenter.this.mCurrentMediaSource == 2 && 2 == MediaPresenter.this.mBTMusicConnectStatus) {
                if (MediaPresenter.this.mCarMediaDataManager.getMusicFileExists() == 0) {
                    MediaPresenter.this.play(2);
                } else {
                    String string = SharedPrefsUtil.getInstance(MediaPresenter.this.mContext).getString(SharedPrefsUtil.TAG_AUDIO_FOCUS_ON_BY_CLIENTID, BuildConfig.FLAVOR);
                    Log.e(MediaPresenter.TAG, "clientId=" + string);
                    if (!TextUtils.isEmpty(string) && 2 == Utils.getAudioFocusByClientId(string)) {
                        MediaPresenter.this.play(2);
                    }
                }
            }
            if (2 != MediaPresenter.this.mCurrentMediaSource || MediaPresenter.this.mOnChangedMediaListener == null) {
                return;
            }
            if (2 == MediaPresenter.this.mBTMusicConnectStatus) {
                MediaPresenter.this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.presenter.MediaPresenter.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (2 == MediaPresenter.this.mCurrentMediaSource && MediaPresenter.this.mOnChangedMediaListener != null && 2 == MediaPresenter.this.mBTMusicConnectStatus) {
                            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(2);
                        }
                    }
                }, 1500L);
            } else {
                MediaPresenter.this.mCurrentMediaSource = -1;
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(-1);
            }
        }

        public void onBluetoothMediaPlaybackStateChanged(boolean z, int i, int i2) {
            if (2 != MediaPresenter.this.mBTMusicConnectStatus || MediaPresenter.this.mOnChangedMediaListener == null) {
                return;
            }
            if (2 != MediaPresenter.this.mCurrentMediaSource && i2 > 0) {
                MediaPresenter.this.mCurrentMediaSource = 2;
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(2);
            } else if (2 != MediaPresenter.this.mCurrentMediaSource) {
                return;
            }
            if (i <= 0 || i2 <= 0) {
                MediaPresenter.this.mProgress = 0;
            } else {
                MediaPresenter.this.mProgress = Math.round((i2 * 10000.0f) / i);
            }
            MediaPresenter.this.mIsPlaying = z;
            SharedPrefsUtil.getInstance(MediaPresenter.this.mContext).save(SharedPrefsUtil.TAG_AUDIO_FOCUS_ON_BY_CLIENTID, Utils.CLIENT_ID_BT_MUSIC);
            MediaPresenter.this.mOnChangedMediaListener.onChangePlayStatus(MediaPresenter.this.mIsPlaying);
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaProgress(MediaPresenter.this.mProgress);
        }

        public void onBluetoothMediaTrackInfoChanged(MediaMetadata mediaMetadata) {
            String str = MediaPresenter.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onBluetoothMediaTrackInfoChanged mCurrentMediaSource:");
            sb.append(MediaPresenter.this.mCurrentMediaSource);
            sb.append(", mediaMetadata:");
            sb.append(mediaMetadata == null ? null : mediaMetadata.toString());
            Log.i(str, sb.toString());
            if (2 != MediaPresenter.this.mBTMusicConnectStatus || MediaPresenter.this.mOnChangedMediaListener == null || mediaMetadata == null) {
                return;
            }
            MediaPresenter.this.mTitle = mediaMetadata.getString("android.media.metadata.TITLE");
            MediaPresenter.this.mSinger = mediaMetadata.getString("android.media.metadata.ARTIST");
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(MediaPresenter.this.mTitle, MediaPresenter.this.mSinger);
        }
    };
    private CarMusicManager.CarMusicControlCallback mCarMusicControlCallback = new CarMusicManager.CarMusicControlCallback() { // from class: com.yftech.yfhome.presenter.MediaPresenter.4
        public void onChangePlayMode(int i) {
            Log.i(MediaPresenter.TAG, "onChangePlayMode:mode=" + i);
            if ((MediaPresenter.this.mCurrentMediaSource == 0 || MediaPresenter.this.mCurrentMediaSource == 1) && MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mCycleMode = i;
                MediaPresenter.this.mOnChangedMediaListener.onChangeCycleMode(i);
            }
        }

        public void onChangePlayMusic(MediaFile mediaFile) {
            MediaFile playMusic;
            String str = MediaPresenter.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onChangePlayMusic musicFile:");
            sb.append(mediaFile == null ? null : mediaFile.toString());
            Log.i(str, sb.toString());
            if (MediaPresenter.this.mOnChangedMediaListener == null || mediaFile == null) {
                return;
            }
            MediaPresenter.this.mTitle = mediaFile.getTitle();
            MediaPresenter.this.mSinger = mediaFile.getArtist();
            MediaPresenter.this.mMusicFilePath = mediaFile.getData();
            MediaPresenter.this.mIsPlayError = false;
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(MediaPresenter.this.mTitle, MediaPresenter.this.mSinger);
            MediaPresenter.this.mOnChangedMediaListener.onChangePlayError(MediaPresenter.this.mIsPlayError);
            int i = -1;
            if ((MediaPresenter.this.mMusicFilePath == null || MediaPresenter.this.mMusicFilePath.isEmpty()) && (playMusic = MediaPresenter.this.mCarMusicManager.getPlayMusic()) != null) {
                MediaPresenter.this.mMusicFilePath = playMusic.getData();
            }
            int usbIndex = MediaPresenter.this.mCarMediaDataManager.getUsbIndex(MediaPresenter.this.mMusicFilePath);
            if (usbIndex == 0) {
                i = 0;
            } else if (1 == usbIndex) {
                i = 1;
            }
            MediaPresenter.this.mCurrentMediaSource = i;
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(i);
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaProgress(0);
        }

        public void onChangePlaying(boolean z) {
            Log.i(MediaPresenter.TAG, "onChangePlaying isPlaying:" + z);
            if ((MediaPresenter.this.mCurrentMediaSource == 0 || MediaPresenter.this.mCurrentMediaSource == 1) && MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mIsPlaying = z;
                MediaPresenter.this.mOnChangedMediaListener.onChangePlayStatus(MediaPresenter.this.mIsPlaying);
            }
        }

        public void onChangeProgress(int i) {
            if ((MediaPresenter.this.mCurrentMediaSource == 0 || MediaPresenter.this.mCurrentMediaSource == 1) && MediaPresenter.this.mOnChangedMediaListener != null) {
                long currentPlayDuration = MediaPresenter.this.mCarMusicManager.getCurrentPlayDuration();
                if (0 >= currentPlayDuration || i <= 0) {
                    MediaPresenter.this.mProgress = 0;
                } else {
                    MediaPresenter.this.mProgress = Math.round((i * 10000.0f) / currentPlayDuration);
                }
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaProgress(MediaPresenter.this.mProgress);
            }
        }

        public boolean onPlayError(int i) {
            Log.i(MediaPresenter.TAG, "onPlayError status:" + i);
            MediaPresenter.this.mIsPlayError = true;
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onChangePlayError(true);
            }
            return super.onPlayError(i);
        }
    };
    private CarMediaDataManager.OnDataChangeCallback mOnDataChangeCallback = new CarMediaDataManager.OnDataChangeCallback() { // from class: com.yftech.yfhome.presenter.MediaPresenter.5
        public void onScanStatusChange(int i, boolean z) {
            Log.i(MediaPresenter.TAG, "onScanStatusChange usbIndex:" + i + ", isScanner:" + z);
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onChangedUSBScan(i, z);
            }
        }

        public void onUsbStatusChange(int i, boolean z) {
            Log.i(MediaPresenter.TAG, "onUsbStatusChange usbIndex:" + i + ", isUsbExists:" + z);
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onChangedUSBStatus(i, z);
                if (z) {
                    return;
                }
                if ((i == 0 && MediaPresenter.this.mCurrentMediaSource == 0) || (i == 1 && MediaPresenter.this.mCurrentMediaSource == 1)) {
                    MediaPresenter.this.mCurrentMediaSource = -1;
                    MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(-1);
                }
            }
        }
    };
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.yfhome.presenter.MediaPresenter.6
        public void onConnectedStatusChanged(String str) {
            Log.i(MediaPresenter.TAG, "onConnectedStatusChanged status:" + str + ", mCurrentMediaSource:" + MediaPresenter.this.mCurrentMediaSource);
            MediaPresenter.this.mIsCarlifeConnect = Utils.CLIENT_ID_CARLIFE.equals(str);
            MediaPresenter.this.mIsCarplayConnect = "carplay".equals(str);
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onChangedCarlifeConnectStatus((MediaPresenter.this.mIsCarlifeConnect ? CarlifeConnectStatus.CONNECTED : CarlifeConnectStatus.DISCONNECT).ordinal());
                MediaPresenter.this.mOnChangedMediaListener.onChangedCarplayConnectStatus(MediaPresenter.this.mIsCarplayConnect ? 2 : 0);
                if ((MediaPresenter.this.mCurrentMediaSource != 4 || MediaPresenter.this.mIsCarplayConnect) && (MediaPresenter.this.mCurrentMediaSource != 3 || MediaPresenter.this.mIsCarlifeConnect)) {
                    return;
                }
                MediaPresenter.this.mCurrentMediaSource = -1;
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(-1);
            }
        }

        public void onDeviceChanged(PhoneLink phoneLink) {
            String str = MediaPresenter.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onDeviceChanged phoneLink:");
            sb.append(phoneLink == null ? "null" : phoneLink.toString());
            Log.i(str, sb.toString());
        }

        public void onHicarReConnectStateChange(boolean z, String str) {
            Log.i(MediaPresenter.TAG, "onHicarReConnectStateChange: reConnected = " + z + "  deviceName = " + str);
            MediaPresenter.this.mHiCarReConnected = z;
        }

        public void onShowHuaWeiConnectedDialog() {
            Log.i(MediaPresenter.TAG, "onShowHuaWeiConnectedDialog");
        }

        public void onVRStatusChanged(int i) {
            Log.i(MediaPresenter.TAG, "onVRStatusChanged");
        }
    };
    private CarPhoneLinkMediaManager.CarPhoneLinkMediaCallback mCarPhoneLinkMediaCallback = new CarPhoneLinkMediaManager.CarPhoneLinkMediaCallback() { // from class: com.yftech.yfhome.presenter.MediaPresenter.7
        public void onMediaInfoChanged(PhoneLinkMediaInfo phoneLinkMediaInfo) {
            Log.i(MediaPresenter.TAG, "onMediaInfoChanged mCurrentMediaSource:" + MediaPresenter.this.mCurrentMediaSource);
            if ((3 != MediaPresenter.this.mCurrentMediaSource && 4 != MediaPresenter.this.mCurrentMediaSource) || MediaPresenter.this.mOnChangedMediaListener == null || phoneLinkMediaInfo == null) {
                return;
            }
            long duration = phoneLinkMediaInfo.getDuration();
            long progress = phoneLinkMediaInfo.getProgress();
            String string = (phoneLinkMediaInfo.getSong() == null || TextUtils.isEmpty(phoneLinkMediaInfo.getSong().trim())) ? MediaPresenter.this.mContext.getString(R.string.media_unknown) : phoneLinkMediaInfo.getSong();
            String string2 = (phoneLinkMediaInfo.getArtist() == null || TextUtils.isEmpty(phoneLinkMediaInfo.getArtist().trim())) ? MediaPresenter.this.mContext.getString(R.string.media_unknown) : phoneLinkMediaInfo.getArtist();
            if (duration > 0) {
                MediaPresenter.this.mProgress = Math.round((progress * 10000.0f) / duration);
            } else if (!MediaPresenter.this.mIsPlaying) {
                MediaPresenter.this.mProgress = 0;
            }
            Log.i(MediaPresenter.TAG, "onMediaInfoChanged mTitle:" + string + ", mSinger:" + string2 + ", mIsPlaying:" + phoneLinkMediaInfo.isPlaying() + ", totalTime:" + duration + ", progress:" + progress + ", mProgress:" + MediaPresenter.this.mProgress);
            if (2 == phoneLinkMediaInfo.isPlaying()) {
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
                MediaPresenter.this.mTitle = BuildConfig.FLAVOR;
                MediaPresenter.this.mSinger = BuildConfig.FLAVOR;
            } else if (phoneLinkMediaInfo.isPlaying() != 0 || progress != 0) {
                if ((string.equals(MediaPresenter.this.mTitle) && string2.equals(MediaPresenter.this.mSinger)) ? false : true) {
                    MediaPresenter.this.mTitle = string;
                    MediaPresenter.this.mSinger = string2;
                    MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(MediaPresenter.this.mTitle, MediaPresenter.this.mSinger);
                }
            } else if (phoneLinkMediaInfo.getSong() == null || TextUtils.isEmpty(phoneLinkMediaInfo.getSong().trim())) {
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
                MediaPresenter.this.mTitle = BuildConfig.FLAVOR;
                MediaPresenter.this.mSinger = BuildConfig.FLAVOR;
            } else {
                MediaPresenter.this.mTitle = string;
                MediaPresenter.this.mSinger = string2;
                MediaPresenter.this.mOnChangedMediaListener.onChangedMediaMessage(MediaPresenter.this.mTitle, MediaPresenter.this.mSinger);
            }
            MediaPresenter.this.mIsPlaying = 1 == phoneLinkMediaInfo.isPlaying();
            Log.i(MediaPresenter.TAG, "CarPhoneLinkMediaCallback : mIsPlaying = " + MediaPresenter.this.mIsPlaying);
            MediaPresenter.this.mOnChangedMediaListener.onChangedMediaProgress(MediaPresenter.this.mProgress);
            MediaPresenter.this.mOnChangedMediaListener.onChangePlayStatus(MediaPresenter.this.mIsPlaying);
        }
    };
    private Runnable checkCarPlayPlayingStatusRunable = new Runnable() { // from class: com.yftech.yfhome.presenter.MediaPresenter.8
        @Override // java.lang.Runnable
        public void run() {
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onChangePlayStatus(MediaPresenter.this.mIsPlaying);
            }
        }
    };
    private ICarplayListener listener = new ICarplayListener() { // from class: com.yftech.yfhome.presenter.MediaPresenter.9
        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onCarplayConnectChanged(int i) {
        }

        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onCarplayMusicID3Changed(String str, String str2) {
            Log.i(MediaPresenter.TAG, "onCarplayMusicID3Changed:title=" + str + ", artist=" + str2);
        }

        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onCarplayPlayingChanged(boolean z) {
            Log.i(MediaPresenter.TAG, "onCarplayPlayingChanged:isPlaying=" + z);
        }

        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onCarplayProgressChanged(int i) {
            Log.i(MediaPresenter.TAG, "onCarplayProgressChanged:progress=" + i);
        }

        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onCarplayTotalDurationChanged(int i) {
            Log.i(MediaPresenter.TAG, "onCarplayTotalDurationChanged:totalDuration=" + i);
        }

        @Override // com.yftech.yfhome.presenter.Carplay.ICarplayListener
        public void onResourceStateChanged(boolean z) {
            Log.i(MediaPresenter.TAG, "onResourceStateChanged:isDisplaying=" + z);
            if (MediaPresenter.this.mOnChangedMediaListener != null) {
                MediaPresenter.this.mOnChangedMediaListener.onCarPlayUIDisplayStateChanged(z);
            }
        }
    };

    /* JADX INFO: renamed from: com.yftech.yfhome.presenter.MediaPresenter$2, reason: invalid class name */
    class AnonymousClass2 extends CarAudioManager.CarAudioCallback {
        AnonymousClass2() {
        }

        public void onChangedMediaSource(int i, String str, final String str2) {
            Log.i(MediaPresenter.TAG, "onChangedMediaSource streamType:" + i + ", packageName:" + str + ", clientId:" + str2);
            if (i == -1 && MediaPresenter.this.mCurrentMediaSource == 4 && "carplay".equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus())) {
                return;
            }
            MediaPresenter.this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.presenter.MediaPresenter.2.1
                @Override // java.lang.Runnable
                public void run() {
                    int currentSourceByClientId = MediaPresenter.this.getCurrentSourceByClientId(str2);
                    if (currentSourceByClientId != 2 || CarBluetoothManager.getInstance().isConnected(12)) {
                        if ((currentSourceByClientId != 0 || (CarMediaDataManager.getInstance().isUsbExists(0) && CarMediaDataManager.getInstance().getMusicFileSize(0) > 0)) && ((currentSourceByClientId != 1 || (CarMediaDataManager.getInstance().isUsbExists(1) && CarMediaDataManager.getInstance().getMusicFileSize(1) > 0)) && ((currentSourceByClientId != 3 || MediaPresenter.this.isCarlifeConnect()) && (currentSourceByClientId != 4 || MediaPresenter.this.isCarplayConnect())))) {
                            MediaPresenter.this.mCurrentMediaSource = currentSourceByClientId;
                            SharedPrefsUtil.getInstance(MediaPresenter.this.mContext).save(SharedPrefsUtil.TAG_AUDIO_FOCUS_ON_BY_CLIENTID, str2);
                            final int i2 = MediaPresenter.this.mCurrentMediaSource;
                            if (2 != MediaPresenter.this.mBTMusicConnectStatus && 2 == MediaPresenter.this.mCurrentMediaSource) {
                                Log.i(MediaPresenter.TAG, "Bluetooth is disconnect, return!");
                                i2 = -1;
                            }
                            if (MediaPresenter.this.mOnChangedMediaListener == null || i2 == 6) {
                                return;
                            }
                            MediaPresenter.this.mIsPlayError = false;
                            if ((MediaPresenter.this.mCurrentMediaSource == 0 || 1 == MediaPresenter.this.mCurrentMediaSource) && MediaPresenter.this.isMusicSourceChangedByUser) {
                                MediaPresenter.this.isMusicSourceChangedByUser = false;
                                return;
                            } else {
                                MediaPresenter.this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.presenter.MediaPresenter.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        MediaPresenter.this.mTitle = MediaPresenter.this.getTitle();
                                        MediaPresenter.this.mSinger = MediaPresenter.this.getSinger();
                                        MediaPresenter.this.mIsPlaying = MediaPresenter.this.isPlaying();
                                        MediaPresenter.this.mOnChangedMediaListener.onChangedMediaSource(i2);
                                    }
                                }, (MediaPresenter.this.mCurrentMediaSource == 0 || 1 == MediaPresenter.this.mCurrentMediaSource) ? 100 : 0);
                                return;
                            }
                        }
                    }
                    Log.e(MediaPresenter.TAG, "the source is not available!!!!!!");
                }
            }, (i == 3 && Utils.PACKAGE_USB.equals(str)) ? 200L : 0L);
        }
    }

    public interface OnChangedMediaListener {
        void onCarPlayUIDisplayStateChanged(boolean z);

        void onChangeCycleMode(int i);

        void onChangePlayError(boolean z);

        void onChangePlayStatus(boolean z);

        void onChangedCarlifeConnectStatus(int i);

        void onChangedCarplayConnectStatus(int i);

        void onChangedMediaMessage(String str, String str2);

        void onChangedMediaProgress(int i);

        void onChangedMediaSource(int i);

        void onChangedUSBScan(int i, boolean z);

        void onChangedUSBStatus(int i, boolean z);
    }

    private MediaPresenter(Context context) {
        this.mContext = context;
        CarAudioManager.getInstance().registerCarAudioCallback(this.mCarAudioCallback, this.mHandle);
        this.mCarBluetoothManager = CarBluetoothManager.getInstance();
        this.mBTMusicConnectStatus = this.mCarBluetoothManager.isConnected(12) ? 2 : 0;
        this.mCarBluetoothManager.registerBluetoothMusicCallback(this.mCarBluetoothMusicCallback, this.mHandle);
        this.mCarMusicManager = CarMusicManager.getInstance();
        CarMusicManager.registerMusicControlCallback(this.mCarMusicControlCallback, this.mHandle);
        this.mCarMediaDataManager = CarMediaDataManager.getInstance();
        this.mCarMediaDataManager.registerCarDataControlCallback(this.mOnDataChangeCallback, this.mHandle);
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, this.mHandle);
        CarPhoneLinkMediaManager.getInstance().registerCarPhoneLinkMediaCallback(this.mCarPhoneLinkMediaCallback, this.mHandle);
        this.mIsCarplayConnect = "carplay".equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus());
        this.mIsCarlifeConnect = Utils.CLIENT_ID_CARLIFE.equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus());
        this.mCarplayControl = CarplayControl.getInstance(this.mContext);
        this.mCarplayControl.setCarplayListener(this.listener);
        this.mCurrentMediaSource = getCurrentSource(CarAudioManager.getInstance().getCurrentMediaSource());
        this.mTitle = getTitle();
        this.mSinger = getSinger();
        this.mIsPlaying = isPlaying();
        this.mCycleMode = this.mCarMusicManager.getPlayMode();
    }

    private int getCurrentSource(String str) {
        int i = -1;
        if (str != null && !TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length > 2) {
                int currentSourceByClientId = getCurrentSourceByClientId(strArrSplit[2]);
                if ((currentSourceByClientId == 2 && !CarBluetoothManager.getInstance().isConnected(12)) || ((currentSourceByClientId == 0 && (!CarMediaDataManager.getInstance().isUsbExists(0) || CarMediaDataManager.getInstance().getMusicFileSize(0) <= 0)) || ((currentSourceByClientId == 3 && !isCarlifeConnect()) || (currentSourceByClientId == 4 && !isCarplayConnect())))) {
                    Log.e(TAG, "getCurrentSource:Source=" + currentSourceByClientId + ", is not available!!!!!");
                    return -1;
                }
                i = currentSourceByClientId;
            }
        }
        Log.i(TAG, "getCurrentSource strSource:" + str + ", ret" + i);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentSourceByClientId(String str) {
        int i;
        int i2 = -1;
        if (str != null && !TextUtils.isEmpty(str)) {
            if (str.contains(Utils.CLIENT_ID_USB)) {
                MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                String data = playMusic != null ? playMusic.getData() : null;
                Log.i(TAG, "getCurrentSourceByClientId:path=" + data);
                if (!TextUtils.isEmpty(data)) {
                    int usbIndex = this.mCarMediaDataManager.getUsbIndex(data);
                    if (usbIndex == 0) {
                        i = 0;
                    } else if (1 == usbIndex) {
                        i2 = 1;
                    } else {
                        i = 6;
                    }
                    i2 = i;
                }
            } else if (str.contains(Utils.CLIENT_ID_BT_MUSIC)) {
                i2 = 2;
            } else if (str.contains(Utils.CLIENT_ID_CARLIFE)) {
                i2 = 3;
            } else if (str.contains(Utils.CLIENT_ID_CARPLAY)) {
                i2 = 4;
            }
        }
        Log.i(TAG, "getCurrentSourceByClientId clientId:" + str + ", ret:" + i2);
        return i2;
    }

    public static MediaPresenter getInstance(Context context) {
        if (mInstance == null) {
            synchronized (MediaPresenter.class) {
                if (mInstance == null) {
                    mInstance = new MediaPresenter(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    public String getSinger() {
        String artist;
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                MediaFile playMusic = this.mCarMusicManager.getPlayMusic();
                if (playMusic == null) {
                    artist = null;
                } else {
                    artist = playMusic.getArtist();
                }
                break;
            case 2:
                MediaMetadata bluetoothMusicInfo = this.mCarBluetoothManager.getBluetoothMusicInfo();
                if (bluetoothMusicInfo == null) {
                    artist = null;
                } else {
                    artist = bluetoothMusicInfo.getString("android.media.metadata.ARTIST");
                }
                break;
            case 3:
            case 4:
                artist = this.mCarplayControl.getArtist();
                break;
            default:
                artist = null;
                break;
        }
        Log.i(TAG, "getSinger ret:" + artist + ", mCurrentMediaSource:" + this.mCurrentMediaSource);
        return artist;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    public String getTitle() {
        String title;
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                MediaFile playMusic = this.mCarMusicManager.getPlayMusic();
                if (playMusic == null) {
                    title = null;
                } else {
                    title = playMusic.getTitle();
                }
                break;
            case 2:
                MediaMetadata bluetoothMusicInfo = this.mCarBluetoothManager.getBluetoothMusicInfo();
                if (bluetoothMusicInfo == null) {
                    title = null;
                } else {
                    title = bluetoothMusicInfo.getString("android.media.metadata.TITLE");
                }
                break;
            case 3:
            case 4:
                title = this.mCarplayControl.getTitle();
                break;
            default:
                title = null;
                break;
        }
        Log.i(TAG, "getTitle ret:" + title + ", mCurrentMediaSource:" + this.mCurrentMediaSource);
        return title;
    }

    public void connectPhoneLink(String str) {
        Log.i(TAG, "connectPhoneLink: " + str);
        CarPhoneLinkManager.getInstance().connectByUsb(str);
    }

    public void disconnectPhoneLink(String str) {
        Log.i(TAG, "disconnectPhoneLink: " + str);
        CarPhoneLinkManager.getInstance().disConnect(str);
    }

    public int getBTMusicConnectStatus() {
        return this.mBTMusicConnectStatus;
    }

    public int getCurrentMediaSource() {
        Log.i(TAG, "getCurrentMediaSource:" + this.mCurrentMediaSource);
        return this.mCurrentMediaSource;
    }

    public String getCurrentPhoneLinkType() {
        String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
        if (connectedLinkStatus == null) {
            Log.i(TAG, "getCurrentPhoneLinkType phoneLink is null!");
            return "none";
        }
        Log.i(TAG, "getCurrentPhoneLinkType:" + connectedLinkStatus);
        return connectedLinkStatus;
    }

    public int getCurrentProgress() {
        Log.i(TAG, "getCurrentProgress:" + this.mProgress);
        return this.mProgress;
    }

    public String getCurrentSinger() {
        if (TextUtils.isEmpty(this.mSinger)) {
            this.mSinger = getTitle();
        }
        Log.i(TAG, "getCurrentSinger:" + this.mSinger);
        return this.mSinger;
    }

    public String getCurrentTitle() {
        if (TextUtils.isEmpty(this.mTitle)) {
            this.mTitle = getTitle();
        }
        Log.i(TAG, "getCurrentTitle:" + this.mTitle);
        return this.mTitle;
    }

    public int getCycleMode() {
        Log.i(TAG, "getCycleMode:" + this.mCycleMode);
        return this.mCycleMode;
    }

    public int getUsbStatus(int i) {
        int i2;
        if (!this.mCarMediaDataManager.isUsbExists(i)) {
            i2 = 0;
        } else if (this.mCarMediaDataManager.isScanner(i)) {
            i2 = 2;
        } else {
            i2 = this.mCarMediaDataManager.getMusicFileSize(i) > 0 ? 1 : 3;
        }
        Log.i(TAG, "getUsbStatus usbIndex:" + i + ", ret:" + i2);
        return i2;
    }

    public boolean isCarlifeConnect() {
        Log.d(TAG, "isCarlifeConnect=" + this.mIsCarlifeConnect);
        return this.mIsCarlifeConnect;
    }

    public boolean isCarplayConnect() {
        Log.d(TAG, "isCarplayConnect=" + this.mIsCarplayConnect);
        return this.mIsCarplayConnect;
    }

    public boolean isHiCarReConnected() {
        Log.i(TAG, "isHiCarReConnected=" + this.mHiCarReConnected);
        return this.mHiCarReConnected;
    }

    public boolean isPlayError() {
        Log.i(TAG, "isPlayError:" + this.mIsPlayError);
        return this.mIsPlayError;
    }

    public boolean isPlaying() {
        boolean zIsPlaying = false;
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                zIsPlaying = this.mCarMusicManager.isPlaying();
                break;
            case 2:
                zIsPlaying = this.mCarBluetoothManager.isPlayingBluetoothMusic();
                break;
            case 3:
            case 4:
                PhoneLinkMediaInfo curPhoneLinkMediaInfo = CarPhoneLinkMediaManager.getInstance().getCurPhoneLinkMediaInfo();
                if (curPhoneLinkMediaInfo == null) {
                    Log.i(TAG, "PhoneLinkMediaInfo is null , return false");
                } else {
                    int iIsPlaying = curPhoneLinkMediaInfo.isPlaying();
                    zIsPlaying = iIsPlaying == 1;
                    Log.i(TAG, "isPlaying: currStatus == " + iIsPlaying);
                }
                break;
        }
        Log.i(TAG, "isPlaying ret:" + zIsPlaying + ", mCurrentMediaSource:" + this.mCurrentMediaSource);
        return zIsPlaying;
    }

    public void next() {
        Log.i(TAG, "next mCurrentMediaSource:" + this.mCurrentMediaSource);
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                this.mCarMusicManager.next();
                break;
            case 2:
                this.mCarBluetoothManager.nextBluetoothMusic();
                break;
            case 3:
            case 4:
                CarPhoneLinkMediaManager.getInstance().next();
                break;
        }
    }

    public void openMediaApp(Context context, int i) {
        Log.i(TAG, "openMediaApp type:" + i);
        if (i == 8) {
            Intent intent = new Intent();
            intent.setClassName("net.easyconn", "net.easyconn.ui.Yf06MainActivity");
            Utils.startAppByAction(this.mContext, intent);
            ((WifiManager) this.mContext.getSystemService("wifi")).setWifiEnabled(true);
        }
        switch (i) {
            case 0:
                Utils.startAppByView(this.mContext, Utils.PACKAGE_MULTIMEDIA, Utils.ACTIVITY_MUSIC, Utils.MUSIC_SOURCE_KEY, Utils.MUSIC_SOURCE_OF_USB1);
                break;
            case 1:
                Utils.startAppByView(this.mContext, Utils.PACKAGE_MULTIMEDIA, Utils.ACTIVITY_MUSIC, Utils.MUSIC_SOURCE_KEY, Utils.MUSIC_SOURCE_OF_USB2);
                break;
            case 2:
                Utils.startAppByView(this.mContext, Utils.PACKAGE_MULTIMEDIA, Utils.ACTIVITY_MUSIC, Utils.MUSIC_SOURCE_KEY, Utils.MUSIC_SOURCE_OF_BLUETOOTH);
                break;
            case 3:
                connectPhoneLink(Utils.CLIENT_ID_CARLIFE);
                break;
            case 4:
                connectPhoneLink("carplay");
                break;
            case 5:
                connectPhoneLink(Utils.CLIENT_ID_HICAR);
                break;
        }
    }

    public void pause() {
        Log.i(TAG, "pause mCurrentMediaSource:" + this.mCurrentMediaSource);
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                this.mCarMusicManager.pause();
                break;
            case 2:
                this.mCarBluetoothManager.pauseBluetoothMusic();
                break;
            case 3:
            case 4:
                CarPhoneLinkMediaManager.getInstance().stop();
                break;
        }
    }

    public void play(int i) {
        Log.i(TAG, "play source:" + i);
        if (i != this.mCurrentMediaSource) {
            Log.i(TAG, "pause the music now!");
            pause();
        }
        switch (i) {
            case 0:
                if (this.mCurrentMediaSource == 0) {
                    this.mCarMusicManager.play();
                } else {
                    this.mCarMusicManager.setCurrentUSB((byte) 0, true);
                    if (!this.mCarMusicManager.isPlaying()) {
                        this.mCarMusicManager.play();
                    }
                }
                break;
            case 1:
                if (1 == this.mCurrentMediaSource) {
                    this.mCarMusicManager.play();
                } else {
                    this.mCarMusicManager.setCurrentUSB((byte) 1, true);
                    if (!this.mCarMusicManager.isPlaying()) {
                        this.mCarMusicManager.play();
                    }
                }
                break;
            case 2:
                if (i != this.mCurrentMediaSource) {
                    this.mTitle = BuildConfig.FLAVOR;
                    this.mSinger = BuildConfig.FLAVOR;
                }
                this.mCarBluetoothManager.startBluetoothMusic(true);
                break;
            case 3:
            case 4:
                if (i != this.mCurrentMediaSource) {
                    this.mTitle = BuildConfig.FLAVOR;
                    this.mSinger = BuildConfig.FLAVOR;
                }
                CarPhoneLinkMediaManager.getInstance().play();
                break;
        }
        this.mCurrentMediaSource = i;
        if (this.mOnChangedMediaListener != null) {
            this.mOnChangedMediaListener.onChangedMediaSource(i);
        }
    }

    public void playPause() {
        if (this.mIsPlaying) {
            pause();
        } else {
            play(this.mCurrentMediaSource);
        }
    }

    public void previous() {
        Log.i(TAG, "previous mCurrentMediaSource:" + this.mCurrentMediaSource);
        switch (this.mCurrentMediaSource) {
            case 0:
            case 1:
                this.mCarMusicManager.previous();
                break;
            case 2:
                this.mCarBluetoothManager.previousBluetoothMusic();
                break;
            case 3:
            case 4:
                CarPhoneLinkMediaManager.getInstance().previous();
                break;
        }
    }

    public void release() {
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
        CarPhoneLinkMediaManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkMediaCallback);
        CarMusicManager.unregisterMusicControlCallback(this.mCarMusicControlCallback);
        CarMediaDataManager.getInstance().unregisterCarDataControlCallback(this.mOnDataChangeCallback);
    }

    public void sendCarPlayTouchEvent(int i) {
        Log.i(TAG, "sendCarPlayTouchEvent: touchType = " + i);
        CarPhoneLinkManager.getInstance().updateCarPlayMedia(i);
    }

    public void setCurrentMediaSource(int i) {
        Log.i(TAG, "setCurrentMediaSource:" + i);
        this.mCurrentMediaSource = i;
    }

    public void setCurrentSinger(String str) {
        Log.i(TAG, "setCurrentSinger:" + str);
        this.mSinger = str;
    }

    public void setCurrentTitle(String str) {
        Log.i(TAG, "setCurrentTitle:" + str);
        this.mTitle = str;
    }

    public void setCycleMode() {
        Log.i(TAG, "setCycleMode");
        this.mCarMusicManager.switchPlayMode();
    }

    public void setOnChangedMediaListener(OnChangedMediaListener onChangedMediaListener) {
        this.mOnChangedMediaListener = onChangedMediaListener;
    }
}
