package com.yftech.yfhome.presenter.carlife;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.yftech.yfhome.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class CarlifeManager {
    private static final String TAG = "CarlifeManager";
    private static volatile CarlifeManager mInstance;
    private String mArtist;
    private ICarlifeListener mCarlifeListener;
    private int mConnectStatus;
    private SettingsValueChangeContentObserver mContentOb = new SettingsValueChangeContentObserver(new Handler());
    private Context mContext;
    private String mId3Info;
    private boolean mIsPlaying;
    private int mProgress;
    private String mTitle;
    private int mTotalDuration;

    private class SettingsValueChangeContentObserver extends ContentObserver {
        public SettingsValueChangeContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            Log.d(CarlifeManager.TAG, "selfChange = " + z + ", uri = " + uri);
            if (uri != null) {
                if (uri.toString().contains(CarlifeKeys.CARLIFE_CONNECT_STATUS_KEY)) {
                    CarlifeManager.this.setConnectStatus(Settings.System.getInt(CarlifeManager.this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_CONNECT_STATUS_KEY, CarlifeConnectStatus.DISCONNECT.ordinal()));
                    return;
                }
                if (uri.toString().contains(CarlifeKeys.CARLIFE_MUSIC_STATUS_KEY)) {
                    CarlifeManager.this.setPlaying(Settings.System.getInt(CarlifeManager.this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_STATUS_KEY, CarlifePlayStatus.PAUSE.ordinal()) == CarlifePlayStatus.PLAY.ordinal());
                    return;
                }
                if (uri.toString().contains(CarlifeKeys.CARLIFE_MUSIC_ID3_INFO_KEY)) {
                    CarlifeManager.this.setId3Info(Settings.System.getString(CarlifeManager.this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_ID3_INFO_KEY));
                } else if (uri.toString().contains(CarlifeKeys.CARLIFE_MUSIC_DURATION_KEY)) {
                    CarlifeManager.this.setTotalDuration(Settings.System.getInt(CarlifeManager.this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_DURATION_KEY, 0));
                } else if (uri.toString().contains(CarlifeKeys.CARLIFE_MUSIC_PROGRESSBAR_KEY)) {
                    CarlifeManager.this.setProgress(Settings.System.getInt(CarlifeManager.this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_PROGRESSBAR_KEY, 0));
                }
            }
        }
    }

    private CarlifeManager(Context context) {
        this.mContext = context;
        initData();
        registerContentObserver(context);
    }

    public static CarlifeManager getInstance(Context context) {
        if (mInstance == null) {
            synchronized (CarlifeManager.class) {
                if (mInstance == null) {
                    mInstance = new CarlifeManager(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    private String getMessageById3(@NonNull CarlifeID3 carlifeID3) {
        String str;
        if (this.mId3Info == null || TextUtils.isEmpty(this.mId3Info)) {
            str = null;
        } else {
            String[] strArrSplit = this.mId3Info.split("\\|");
            int iOrdinal = carlifeID3.ordinal();
            if (strArrSplit == null || strArrSplit.length <= iOrdinal) {
                str = null;
            } else {
                str = strArrSplit[carlifeID3.ordinal()];
            }
        }
        Log.i(TAG, "getMessageById3 id3Index:" + carlifeID3.ordinal() + ", ret:" + str);
        return str;
    }

    private void initData() {
        this.mConnectStatus = Settings.System.getInt(this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_CONNECT_STATUS_KEY, CarlifeConnectStatus.DISCONNECT.ordinal());
        this.mIsPlaying = Settings.System.getInt(this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_STATUS_KEY, CarlifePlayStatus.PAUSE.ordinal()) == CarlifePlayStatus.PLAY.ordinal();
        this.mId3Info = Settings.System.getString(this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_ID3_INFO_KEY);
        this.mTitle = getMessageById3(CarlifeID3.TITLE);
        this.mArtist = getMessageById3(CarlifeID3.ARTIST);
        this.mProgress = Settings.System.getInt(this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_PROGRESSBAR_KEY, 0);
        this.mTotalDuration = Settings.System.getInt(this.mContext.getContentResolver(), CarlifeKeys.CARLIFE_MUSIC_DURATION_KEY, 0);
    }

    private void registerContentObserver(Context context) {
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(CarlifeKeys.CARLIFE_CONNECT_STATUS_KEY), true, this.mContentOb);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(CarlifeKeys.CARLIFE_MUSIC_STATUS_KEY), true, this.mContentOb);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(CarlifeKeys.CARLIFE_MUSIC_ID3_INFO_KEY), true, this.mContentOb);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(CarlifeKeys.CARLIFE_MUSIC_DURATION_KEY), true, this.mContentOb);
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(CarlifeKeys.CARLIFE_MUSIC_PROGRESSBAR_KEY), true, this.mContentOb);
    }

    public void CarlifePlayControl(@NonNull final CarlifePlayStatus carlifePlayStatus) {
        Log.i(TAG, "CarlifePlayControl:" + carlifePlayStatus.ordinal());
        new Thread(new Runnable() { // from class: com.yftech.yfhome.presenter.carlife.CarlifeManager.1
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.setPackage(Utils.PACKAGE_CARLIFE);
                intent.setAction(CarlifeKeys.CARLIFE_MUSIC_CTRL_ACTION);
                intent.putExtra(CarlifeKeys.CARLIFE_MUSIC_CONTROL_KEY, carlifePlayStatus.ordinal());
                CarlifeManager.this.mContext.sendBroadcast(intent);
            }
        }).start();
    }

    public String getArtist() {
        Log.i(TAG, "getArtist:" + this.mArtist);
        return this.mArtist;
    }

    public int getConnectStatus() {
        Log.i(TAG, "getConnectStatus:" + this.mConnectStatus);
        return this.mConnectStatus;
    }

    public String getId3Info() {
        Log.i(TAG, "getId3Info:" + this.mId3Info);
        return this.mId3Info;
    }

    public int getProgress() {
        Log.i(TAG, "getProgress:" + this.mProgress);
        return this.mProgress;
    }

    public String getTitle() {
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

    public void setArtist(String str) {
        Log.i(TAG, "setArtist:" + str);
        this.mArtist = str;
    }

    public void setCarlifeListener(ICarlifeListener iCarlifeListener) {
        this.mCarlifeListener = iCarlifeListener;
    }

    public void setConnectStatus(int i) {
        Log.i(TAG, "setConnectStatus:" + i);
        this.mConnectStatus = i;
        if (this.mCarlifeListener != null) {
            this.mCarlifeListener.onCarlifeConnectChanged(i);
        }
    }

    public void setId3Info(String str) {
        Log.i(TAG, "setId3Info:" + str);
        this.mId3Info = str;
        setTitle(getMessageById3(CarlifeID3.TITLE));
        setArtist(getMessageById3(CarlifeID3.ARTIST));
        if (this.mCarlifeListener != null) {
            this.mCarlifeListener.onCarlifeMusicID3Changed(getTitle(), getArtist());
        }
    }

    public void setPlaying(boolean z) {
        Log.i(TAG, "setPlaying:" + z);
        this.mIsPlaying = z;
        if (this.mCarlifeListener != null) {
            this.mCarlifeListener.onCarlifePlayingChanged(z);
        }
    }

    public void setProgress(int i) {
        Log.i(TAG, "setProgress:" + i);
        this.mProgress = i;
        if (this.mCarlifeListener != null) {
            this.mCarlifeListener.onCarlifeProgressChanged(i);
        }
    }

    public void setTitle(String str) {
        Log.i(TAG, "setTitle:" + str);
        this.mTitle = str;
    }

    public void setTotalDuration(int i) {
        Log.i(TAG, "setTotalDuration:" + i);
        this.mTotalDuration = i;
        if (this.mCarlifeListener != null) {
            this.mCarlifeListener.onCarlifeTotalDurationChanged(i);
        }
    }
}
