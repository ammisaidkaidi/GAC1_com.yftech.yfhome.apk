package com.yftech.yfhome.presenter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.radio.CarRadioManager;
import com.yftech.car.media.radio.dab.CarDabRadioManager;
import com.yftech.car.media.radio.dab.entity.DabEnsemble;
import com.yftech.car.media.radio.dab.entity.DabPlayInfo;
import com.yftech.car.media.radio.dab.entity.DabProperties;
import com.yftech.car.media.radio.dab.entity.DabScanStatus;
import com.yftech.car.media.radio.entity.DataOfRadio;
import com.yftech.yfhome.BuildConfig;
import com.yftech.yfhome.R;
import com.yftech.yfhome.bean.DabChannelInfo;
import com.yftech.yfhome.bean.InvalidDabChannelInfo;
import com.yftech.yfhome.utils.ToastUtils;
import com.yftech.yfhome.utils.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class RadioPresenter {
    private static final int CHECK_RADIO_MESSAGE_TIME = 500;
    private static final int INVALID_RADIO_TYPE = -1;
    private static final String KEY_DAB_SIGNAL_CONGFIG = "dab_config_data_rssi_snr";
    private static final int MSG_CHECK_RADIO_MESSAGE = 0;
    private static final int MSG_UPDATE_PLAY_INFO = 10005;
    private static final int MSG_UPDATE_PLAY_ST = 10004;
    private static final int RADIO_FAVOR_MAX_AM = 20;
    private static final int RADIO_FAVOR_MAX_DAB = 30;
    private static final int RADIO_FAVOR_MAX_FM = 30;
    private static int REQUEST_MAX_SUM = 10;
    public static int SOURCE_OF_DAB = 1;
    public static int SOURCE_OF_FMAM = 0;
    private static final String TAG = "RadioPresenter";
    private static volatile RadioPresenter mInstance;
    private String mBand;
    private CarRadioManager mCarRadioManager;
    private Context mContext;
    private int mCurrDabPostion;
    private String mCurrStationLable;
    private String mCurrStationName;
    private String mFrequency;
    private OnChangedRadioListener mOnChangedRadioListener;
    private String mUnit;
    private boolean mIsPlaying = false;
    private List<DabChannelInfo> dabChannelInfoList = new ArrayList();
    private int mRequestDabInfoListSum = 0;
    private int mRequestDabInfoSum = 0;
    public int mRadioCurrType = SOURCE_OF_FMAM;
    private int minFmSinalConfig = 0;
    private int minAmSinalConfig = 12;
    private int minSinalConfig = -95;
    private boolean mIsSignalPoor = true;
    private Handler mHandle = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.presenter.RadioPresenter.1
        /* JADX WARN: Code duplicated, block: B:23:0x0082  */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                Log.i(RadioPresenter.TAG, "MSG_CHECK_RADIO_MESSAGE");
                RadioPresenter.this.checkRadioMessage();
            }
            switch (i) {
                case RadioPresenter.MSG_UPDATE_PLAY_ST /* 10004 */:
                    RadioPresenter.this.updatePlayStatusUi();
                    break;
                case RadioPresenter.MSG_UPDATE_PLAY_INFO /* 10005 */:
                    DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                    if (playInfo != null) {
                        boolean z = false;
                        for (int i2 = 0; i2 < RadioPresenter.this.dabChannelInfoList.size(); i2++) {
                            if (!(RadioPresenter.this.dabChannelInfoList.get(i2) instanceof InvalidDabChannelInfo) && playInfo.getFrequency() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i2)).getFrequency() && playInfo.getServiceId() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i2)).getServiceId() && playInfo.getEnsembleId() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i2)).getEnsembleId()) {
                                RadioPresenter.this.updateCurrentPlayInfoUi(i2);
                                z = true;
                                if (!z) {
                                    RadioPresenter.this.updateCurrentPlayInfoUi(RadioPresenter.this.mCurrDabPostion);
                                }
                            }
                            break;
                        }
                        if (!z) {
                            RadioPresenter.this.updateCurrentPlayInfoUi(RadioPresenter.this.mCurrDabPostion);
                        }
                    }
                    break;
            }
        }
    };
    private CarRadioManager.CarRadioControlCallback mCarRadioControlCallback = new CarRadioManager.CarRadioControlCallback() { // from class: com.yftech.yfhome.presenter.RadioPresenter.2
        public void onAudioFocusChange(int i) {
            Log.i(RadioPresenter.TAG, "onAudioFocusChange focusChange:" + i);
        }

        public void onFavorChange(int i, DataOfRadio dataOfRadio) {
            super.onFavorChange(i, dataOfRadio);
            Log.i(RadioPresenter.TAG, "onFavorChange index:" + i + ", mRadio:" + dataOfRadio.toString());
            if (RadioPresenter.this.mCarRadioManager == null || RadioPresenter.this.mOnChangedRadioListener == null) {
                return;
            }
            RadioPresenter.this.mOnChangedRadioListener.onChangeFavoriteStatus(RadioPresenter.this.mCarRadioManager.isFreqFavored(dataOfRadio));
        }

        public void onFreqChanage(int i, DataOfRadio dataOfRadio, DataOfRadio dataOfRadio2) {
            if (dataOfRadio != null) {
                Log.i(RadioPresenter.TAG, "onFreqChanage colorIndex:" + i + ", newChannel:" + dataOfRadio.toString() + ", oldChannel:" + dataOfRadio2.toString());
                String str = RadioPresenter.this.mBand;
                if (RadioPresenter.this.mOnChangedRadioListener != null && str != null) {
                    RadioPresenter.this.mOnChangedRadioListener.onChangeFavoriteStatus(RadioPresenter.this.isFavorite());
                }
                if (dataOfRadio.getType() == 0 && RadioPresenter.this.mIsRadioRdsPresent && !TextUtils.isEmpty(RadioPresenter.this.getRdsCommonString())) {
                    Log.i(RadioPresenter.TAG, "onFreqChanage: 当前显示RDS名称，不显示频段");
                } else {
                    RadioPresenter.this.updateRadioMessage(dataOfRadio);
                }
            }
        }

        public void onFreqSignal(int i, DataOfRadio dataOfRadio, int i2) {
            if (i != -1) {
                RadioPresenter.this.updateRadioMessage(dataOfRadio);
                RadioPresenter.this.mOnChangedRadioListener.onChangeFavoriteStatus(RadioPresenter.this.isFavorite(dataOfRadio));
            }
            if (Utils.isRadioDABPresent() && RadioPresenter.this.mRadioCurrType == RadioPresenter.SOURCE_OF_FMAM) {
                if (dataOfRadio != null) {
                    RadioPresenter.this.setSignalPoorSt(RadioPresenter.SOURCE_OF_FMAM, dataOfRadio.getType(), i2);
                } else {
                    RadioPresenter.this.setSignalPoorSt(RadioPresenter.SOURCE_OF_FMAM, CarRadioManager.getInstance().getBand(), i2);
                }
            }
        }

        public void onPlayPause(boolean z) {
            super.onPlayPause(z);
            Log.i(RadioPresenter.TAG, "FM onPlayPause isPlaying:" + z);
            RadioPresenter.this.mIsPlaying = z;
            if (RadioPresenter.this.mIsPlaying) {
                RadioPresenter.this.mRadioCurrType = RadioPresenter.SOURCE_OF_FMAM;
            }
            if (RadioPresenter.this.mOnChangedRadioListener == null || RadioPresenter.this.mRadioCurrType != RadioPresenter.SOURCE_OF_FMAM) {
                return;
            }
            RadioPresenter.this.mOnChangedRadioListener.onChangeRadioPlayStatus(RadioPresenter.this.mIsPlaying);
        }

        public void onRdsCommonStringChange(int i, String str) {
            Log.i(RadioPresenter.TAG, "onRdsCommonStringChange: mRdsPresent = " + RadioPresenter.this.mIsRadioRdsPresent + ", value =" + str + ", type = " + i);
            if (RadioPresenter.this.mIsRadioRdsPresent && !TextUtils.isEmpty(str) && CarRadioManager.getInstance().getBand() == 0 && i == 8 && RadioPresenter.this.mOnChangedRadioListener != null) {
                RadioPresenter.this.mOnChangedRadioListener.onRdsCommonStringChange(Utils.convertStationName(str.trim()));
            }
        }

        public void onSeekStatusChange(int i, int i2, int i3) {
            Log.i(RadioPresenter.TAG, "onSeekStatusChange scanType:" + i + ", status:" + i2 + ", operation:" + i3);
            if (RadioPresenter.this.mOnChangedRadioListener != null) {
                RadioPresenter.this.mOnChangedRadioListener.onChangeScanStatus(i2 == 1);
            }
        }
    };
    private CarDataManager.CarDataCallback mDabChannleInfoListSelectPositionChangedOfRadioAppCallback = new CarDataManager.CarDataCallback() { // from class: com.yftech.yfhome.presenter.RadioPresenter.5
        public void onCarDataChanged(CarData carData) {
            if (carData.containsKey("DAB_CHANNEINFO_CHANGED_POSTION")) {
                int i = CarDataManager.getInt("DAB_CHANNEINFO_CHANGED_POSTION", 0);
                Log.i(RadioPresenter.TAG, "onCarDataChanged: position = " + i);
                RadioPresenter.this.updateCurrentPlayInfoUi(i);
            }
        }
    };
    private CarDabRadioManager.CarDabRadioControlCallback mCarDabRadioControlCallback = new CarDabRadioManager.CarDabRadioControlCallback() { // from class: com.yftech.yfhome.presenter.RadioPresenter.6
        public void onEnsembleListChange(int i) {
            super.onEnsembleListChange(i);
            Log.d(RadioPresenter.TAG, "onEnsembleListChange type: " + i);
            RadioPresenter.this.updateListData();
        }

        public void onEpgDataChange() {
            super.onEpgDataChange();
        }

        public void onFavorChange(int i) {
            super.onFavorChange(i);
            if (RadioPresenter.this.mOnChangedRadioListener != null) {
                RadioPresenter.this.mOnChangedRadioListener.onChangeFavoriteStatus(RadioPresenter.this.isFavoredDab(RadioPresenter.this.mCurrDabPostion));
            }
        }

        public void onPlayPause(boolean z) {
            super.onPlayPause(z);
            Log.d(RadioPresenter.TAG, "DAB onPlayPause isPlaying: " + z);
            if (z) {
                RadioPresenter.this.mRadioCurrType = RadioPresenter.SOURCE_OF_DAB;
            }
            if (RadioPresenter.this.dabChannelInfoList.isEmpty()) {
                RadioPresenter.this.updateListData();
            }
            RadioPresenter.this.mHandle.sendEmptyMessage(RadioPresenter.MSG_UPDATE_PLAY_ST);
        }

        public void onPlayStatusChange(DabPlayInfo dabPlayInfo) {
            super.onPlayStatusChange(dabPlayInfo);
            Log.d(RadioPresenter.TAG, "mRadioCurrType: " + RadioPresenter.this.mRadioCurrType + ",  onPlayStatusChange isPlaying: " + dabPlayInfo.toString());
            if (RadioPresenter.this.mRadioCurrType == RadioPresenter.SOURCE_OF_DAB) {
                RadioPresenter.this.setSignalPoorSt(RadioPresenter.SOURCE_OF_DAB, -1, -1);
                RadioPresenter.this.mHandle.sendEmptyMessage(RadioPresenter.MSG_UPDATE_PLAY_INFO);
            }
        }

        public void onScanStatusChange(DabScanStatus dabScanStatus, DabScanStatus dabScanStatus2) {
            super.onScanStatusChange(dabScanStatus, dabScanStatus2);
            if (dabScanStatus == null || dabScanStatus.isRuning()) {
                return;
            }
            Log.d(RadioPresenter.TAG, "onScanStatusChange newDabScan: " + dabScanStatus + ",oldDabScan: " + dabScanStatus2);
            RadioPresenter.this.updateListData();
        }

        public void onVersionNumbers(String str) {
            super.onVersionNumbers(str);
            Log.i(RadioPresenter.TAG, "onVersionNumbers: " + str);
        }
    };
    public ExecutorService mDataThreadPool = Executors.newFixedThreadPool(1);
    private boolean mFmKeepTwoDecima = Utils.isFmKeepTwoDecima();
    private boolean mIsRadioDabPresent = Utils.isRadioDABPresent();
    private boolean mIsRadioRdsPresent = Utils.isRadioRdsPresent();
    private boolean mIsRadioPresent = Utils.isRadioPresent();

    /* JADX INFO: renamed from: com.yftech.yfhome.presenter.RadioPresenter$3, reason: invalid class name */
    class AnonymousClass3 extends AsyncTask<Object, Void, Object> {
        AnonymousClass3() {
        }

        public static /* synthetic */ void lambda$doInBackground$0(AnonymousClass3 anonymousClass3) {
            if (RadioPresenter.this.mOnChangedRadioListener != null) {
                RadioPresenter.this.mOnChangedRadioListener.onSignalStatusChanged(RadioPresenter.this.isSignalPoor());
            }
        }

        @Override // android.os.AsyncTask
        protected final Object doInBackground(Object[] objArr) {
            DabEnsemble[] dabEnsemble = CarDabRadioManager.getInstance().getDabEnsemble();
            if (dabEnsemble == null) {
                Log.d(RadioPresenter.TAG, "refreshData,dabEnsembles is null ----");
            } else {
                Log.d(RadioPresenter.TAG, "refreshData,dabEnsembles length:  " + dabEnsemble.length);
            }
            ArrayList arrayList = new ArrayList();
            RadioPresenter.this.convertDabInfos(dabEnsemble, arrayList);
            if (arrayList.isEmpty()) {
                Log.d(RadioPresenter.TAG, "refreshData,ChannelInfoList is empty ----");
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(arrayList);
            if (arrayList2.size() == 1) {
                Log.d(RadioPresenter.TAG, "dataList only 1 =======");
                arrayList2.add(0, new InvalidDabChannelInfo(null));
                arrayList2.add(2, new InvalidDabChannelInfo(null));
            } else if (arrayList2.size() == 2) {
                Log.d(RadioPresenter.TAG, "dataList only 2-----");
                arrayList2.add(0, new InvalidDabChannelInfo(null));
                arrayList2.add(new InvalidDabChannelInfo(null));
                arrayList2.addAll(arrayList);
            } else if (arrayList2.size() == 3) {
                Log.d(RadioPresenter.TAG, "dataList only 3 !!!!!!");
                arrayList2.addAll(arrayList);
            }
            RadioPresenter.this.dabChannelInfoList.clear();
            RadioPresenter.this.dabChannelInfoList.addAll(arrayList2);
            arrayList.clear();
            arrayList2.clear();
            RadioPresenter.this.mHandle.sendEmptyMessage(RadioPresenter.MSG_UPDATE_PLAY_INFO);
            RadioPresenter.this.mHandle.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$3$zy9u7H-_OKcw4inebDZdiJrfTAo
                @Override // java.lang.Runnable
                public final void run() {
                    RadioPresenter.AnonymousClass3.lambda$doInBackground$0(this.f$0);
                }
            });
            return null;
        }
    }

    public interface OnChangedRadioListener {
        void onChangeFavoriteStatus(boolean z);

        void onChangeRadioPlayStatus(boolean z);

        void onChangeScanStatus(boolean z);

        void onChangedDabStationLable(String str, String str2);

        void onChangedRadioBand(int i, String str, String str2);

        void onChangedRadioFrequency(String str);

        void onRdsCommonStringChange(String str);

        void onSignalStatusChanged(boolean z);
    }

    private RadioPresenter(Context context) {
        this.mContext = context;
        CarDataManager.registerCarDataCallback(this.mDabChannleInfoListSelectPositionChangedOfRadioAppCallback, this.mHandle);
        if (this.mIsRadioPresent) {
            checkRadioMessage();
        }
        if (this.mIsRadioDabPresent) {
            initDab();
        }
    }

    static /* synthetic */ int access$1408(RadioPresenter radioPresenter) {
        int i = radioPresenter.mRequestDabInfoSum;
        radioPresenter.mRequestDabInfoSum = i + 1;
        return i;
    }

    private void addFavorite() {
        Log.i(TAG, "addFavorite");
        if (this.mCarRadioManager != null) {
            this.mCarRadioManager.addFavor(this.mCarRadioManager.getFreq());
        } else {
            Log.i(TAG, "CarRadioManager is null!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkRadioMessage() {
        if (this.mHandle.hasMessages(0)) {
            this.mHandle.removeMessages(0);
        }
        int i = -1;
        try {
            if (this.mCarRadioManager == null) {
                this.mCarRadioManager = CarRadioManager.getInstance();
                CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback, new Handler());
            }
            if (this.mCarRadioManager == null || this.mCarRadioManager.getFreq() == null || -1 == this.mCarRadioManager.getFreq().getType()) {
                Log.i(TAG, "Radio message is invalid,check delay!");
                checkRadioMessageDelay(500L);
                return -1;
            }
            DataOfRadio freq = this.mCarRadioManager.getFreq();
            int type = freq.getType();
            try {
                if (type == 0) {
                    this.mBand = this.mContext.getString(R.string.fm);
                    if (this.mFmKeepTwoDecima) {
                        this.mFrequency = String.format(Locale.ENGLISH, "%.2f", Float.valueOf(this.mCarRadioManager.getFreq().getFreq() / 1000.0f)) + BuildConfig.FLAVOR;
                    } else {
                        this.mFrequency = (this.mCarRadioManager.getFreq().getFreq() / 1000.0f) + BuildConfig.FLAVOR;
                    }
                    this.mUnit = this.mContext.getString(R.string.mhz);
                } else {
                    this.mBand = this.mContext.getString(R.string.am);
                    this.mFrequency = freq.getFreq() + BuildConfig.FLAVOR;
                    this.mUnit = this.mContext.getString(R.string.khz);
                }
                this.mIsPlaying = this.mCarRadioManager.isPlaying();
                if (this.mIsPlaying) {
                    this.mRadioCurrType = SOURCE_OF_FMAM;
                }
                if (this.mOnChangedRadioListener != null) {
                    this.mOnChangedRadioListener.onChangedRadioBand(this.mRadioCurrType, this.mBand, this.mUnit);
                    this.mOnChangedRadioListener.onChangedRadioFrequency(this.mFrequency);
                    this.mOnChangedRadioListener.onChangeRadioPlayStatus(this.mIsPlaying);
                    this.mOnChangedRadioListener.onChangeFavoriteStatus(this.mCarRadioManager.isFreqFavored(freq));
                }
                if (this.mCarDabRadioControlCallback != null) {
                    this.mCarDabRadioControlCallback.onPlayPause(CarDabRadioManager.getInstance().isPlaying());
                }
                return type;
            } catch (Exception e) {
                e = e;
                i = type;
                e.printStackTrace();
                Log.i(TAG, "Radio message is exception,check delay!");
                checkRadioMessageDelay(500L);
                return i;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void checkRadioMessageDelay(long j) {
        this.mBand = BuildConfig.FLAVOR;
        this.mFrequency = BuildConfig.FLAVOR;
        this.mUnit = BuildConfig.FLAVOR;
        this.mHandle.sendEmptyMessageDelayed(0, j);
    }

    private DabChannelInfo getCurrDabChannelInfoByDabPlayInfo(DabPlayInfo dabPlayInfo) {
        DabChannelInfo dabChannelInfo = null;
        if (!this.dabChannelInfoList.isEmpty()) {
            for (DabChannelInfo dabChannelInfo2 : this.dabChannelInfoList) {
                if (dabChannelInfo2.getEnsembleId() == dabPlayInfo.getEnsembleId() && dabChannelInfo2.getServiceId() == dabPlayInfo.getServiceId()) {
                    dabChannelInfo = dabChannelInfo2;
                }
            }
        }
        return dabChannelInfo;
    }

    public static RadioPresenter getInstance(Context context) {
        if (mInstance == null) {
            synchronized (RadioPresenter.class) {
                if (mInstance == null) {
                    mInstance = new RadioPresenter(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    private void initCurrentPlayInfo() {
        this.mHandle.post(new Runnable() { // from class: com.yftech.yfhome.presenter.RadioPresenter.4
            @Override // java.lang.Runnable
            public void run() {
                DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
                if (playInfo == null && RadioPresenter.this.mRequestDabInfoSum < RadioPresenter.REQUEST_MAX_SUM) {
                    Log.i(RadioPresenter.TAG, "initCurrentPlayInfo: info is NULL !!!");
                    RadioPresenter.access$1408(RadioPresenter.this);
                    RadioPresenter.this.mHandle.postDelayed(this, 1000L);
                } else if (playInfo == null) {
                    RadioPresenter.this.mCurrStationLable = RadioPresenter.this.mContext.getString(R.string.media_unknown);
                    RadioPresenter.this.mCurrStationName = RadioPresenter.this.mContext.getString(R.string.media_unknown);
                } else {
                    boolean z = false;
                    for (int i = 0; i < RadioPresenter.this.dabChannelInfoList.size(); i++) {
                        if (!(RadioPresenter.this.dabChannelInfoList.get(i) instanceof InvalidDabChannelInfo) && playInfo.getFrequency() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i)).getFrequency() && playInfo.getServiceId() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i)).getServiceId() && playInfo.getEnsembleId() == ((DabChannelInfo) RadioPresenter.this.dabChannelInfoList.get(i)).getEnsembleId()) {
                            RadioPresenter.this.updateCurrentPlayInfoUi(i);
                            z = true;
                        }
                    }
                    if (!z) {
                        RadioPresenter.this.updateCurrentPlayInfoUi(RadioPresenter.this.mCurrDabPostion);
                    }
                }
                if (RadioPresenter.this.mOnChangedRadioListener != null) {
                    if (RadioPresenter.this.isDabPlaying()) {
                        RadioPresenter.this.mRadioCurrType = RadioPresenter.SOURCE_OF_DAB;
                    }
                    if (RadioPresenter.this.mRadioCurrType == RadioPresenter.SOURCE_OF_DAB) {
                        RadioPresenter.this.mOnChangedRadioListener.onChangedRadioBand(RadioPresenter.this.mRadioCurrType, RadioPresenter.this.mBand, RadioPresenter.this.mUnit);
                        RadioPresenter.this.mOnChangedRadioListener.onChangeRadioPlayStatus(RadioPresenter.this.isDabPlaying());
                    }
                }
            }
        });
    }

    private void initDab() {
        Log.i(TAG, "initDab mIsRadioPresent:" + this.mIsRadioPresent);
        if (!this.mIsRadioPresent) {
            this.mRadioCurrType = SOURCE_OF_DAB;
        }
        this.mCurrStationLable = this.mContext.getString(R.string.media_unknown);
        this.mCurrStationName = this.mContext.getString(R.string.media_unknown);
        if (this.mCarRadioManager == null) {
            this.mCarRadioManager = CarRadioManager.getInstance();
            if (this.mIsRadioPresent) {
                CarRadioManager.registerRadioControlCallback(this.mCarRadioControlCallback, new Handler());
            }
        }
        CarDabRadioManager.getInstance().registerRadioControlCallback(this.mCarDabRadioControlCallback, this.mHandle);
        try {
            String configData = CarMediaDataManager.getInstance().getConfigData(KEY_DAB_SIGNAL_CONGFIG);
            if (!TextUtils.isEmpty(configData)) {
                Log.d(TAG, "signalConfig: " + configData);
                this.minSinalConfig = Integer.parseInt(configData.split(",")[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        initDabChannelInfoList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initDabChannelInfoList() {
        Log.d(TAG, "initDabChannelInfoList::" + this.dabChannelInfoList.size() + "::" + this.mRequestDabInfoListSum);
        if (!this.dabChannelInfoList.isEmpty() || this.mRequestDabInfoListSum >= REQUEST_MAX_SUM) {
            this.mRequestDabInfoListSum = 0;
            initCurrentPlayInfo();
        } else {
            this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$49oKpvhIlnzemUtJSaW2_9moBQQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.initDabChannelInfoList();
                }
            }, 1000L);
            this.mRequestDabInfoListSum++;
            updateListData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDabPlaying() {
        boolean zIsPlaying = CarDabRadioManager.getInstance().isPlaying();
        Log.i(TAG, "DAB isPlaying: " + zIsPlaying);
        return zIsPlaying;
    }

    private void isShowSignalPoorToast() {
        if (this.mIsSignalPoor && this.mIsRadioDabPresent) {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.signal_poor));
        }
    }

    public static /* synthetic */ void lambda$playPause$3(RadioPresenter radioPresenter) {
        if (radioPresenter.isDabPlaying()) {
            CarDabRadioManager.getInstance().pause();
        } else {
            CarDabRadioManager.getInstance().play();
        }
    }

    public static /* synthetic */ void lambda$setSignalPoorSt$0(RadioPresenter radioPresenter) {
        if (radioPresenter.mOnChangedRadioListener != null) {
            radioPresenter.mOnChangedRadioListener.onSignalStatusChanged(radioPresenter.mIsSignalPoor);
        }
    }

    private void removeFavorite() {
        Log.i(TAG, "removeFavorite");
        if (this.mCarRadioManager != null) {
            this.mCarRadioManager.removeFavor(this.mCarRadioManager.getFreq());
        } else {
            Log.i(TAG, "CarRadioManager is null!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSignalPoorSt(int i, int i2, int i3) {
        if (i == SOURCE_OF_DAB) {
            DabPlayInfo playInfo = CarDabRadioManager.getInstance().getPlayInfo();
            if (playInfo == null || playInfo.getRssi() >= this.minSinalConfig) {
                this.mIsSignalPoor = false;
            } else {
                this.mIsSignalPoor = true;
            }
        } else if (i2 == 0) {
            this.mIsSignalPoor = i3 <= this.minFmSinalConfig;
        } else if (i2 == 2) {
            this.mIsSignalPoor = i3 <= this.minAmSinalConfig;
        } else {
            this.mIsSignalPoor = false;
        }
        this.mHandle.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$aBWeG4-PDD1J-VIwOeIpUifZqLE
            @Override // java.lang.Runnable
            public final void run() {
                RadioPresenter.lambda$setSignalPoorSt$0(this.f$0);
            }
        });
    }

    private void switchDabFavored() {
        if (this.mCurrDabPostion < 0 || this.mCurrDabPostion > this.dabChannelInfoList.size() - 1) {
            Log.w(TAG, "favored button click,IndexOutOfBoundsException, size: " + this.dabChannelInfoList.size() + " , mCurrDabPostion: " + this.mCurrDabPostion);
            return;
        }
        DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(this.mCurrDabPostion);
        if (dabChannelInfo == null) {
            Log.w(TAG, "favored button click, but current dabdata is null");
            return;
        }
        if (dabChannelInfo instanceof InvalidDabChannelInfo) {
            Log.w(TAG, "favored button click, but current InvalidDabChannelInfo");
            return;
        }
        if (CarDabRadioManager.getInstance().isFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId())) {
            Log.d(TAG, "has Favored -----");
            if (CarDabRadioManager.getInstance().removeFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId()) > 0) {
                ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_remove_favor_successful));
                return;
            } else {
                ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_remove_favor_failure));
                return;
            }
        }
        int iAddFavored = CarDabRadioManager.getInstance().addFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
        if (iAddFavored > 0) {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_add_favor_successful));
        } else {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_add_favor_failure));
        }
        Log.d(TAG, "addFavor result: " + iAddFavored);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentPlayInfoUi(int i) {
        String labelString;
        String labelString2;
        String string = this.mContext.getString(R.string.media_unknown);
        String string2 = this.mContext.getString(R.string.media_unknown);
        this.mCurrDabPostion = i;
        if (this.dabChannelInfoList.isEmpty() || i >= this.dabChannelInfoList.size()) {
            labelString = CarDataManager.get("DAB_CHANNEINFO_CHANGED_SERVICE", string);
            labelString2 = CarDataManager.get("DAB_CHANNEINFO_CHANGED_ENSEMBLE", string2);
        } else {
            DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(i);
            Log.i(TAG, "updateCurrentPlayInfoUi: item: " + dabChannelInfo.toString());
            labelString = dabChannelInfo.getPropertieslabel() == null ? BuildConfig.FLAVOR : dabChannelInfo.getPropertieslabel().getLabelString();
            if (TextUtils.isEmpty(labelString)) {
                labelString = this.mContext.getString(R.string.media_unknown);
            }
            labelString2 = dabChannelInfo.getEnsembleLabel() == null ? BuildConfig.FLAVOR : dabChannelInfo.getEnsembleLabel().getLabelString();
            if (TextUtils.isEmpty(labelString2)) {
                labelString2 = this.mContext.getString(R.string.media_unknown);
            }
        }
        String strConvertStationName = Utils.convertStationName(labelString.trim());
        String strConvertStationName2 = Utils.convertStationName(labelString2.trim());
        Log.i(TAG, "mCurrDabPostion : " + this.mCurrDabPostion + ", updateCurrentPlayInfoUi: " + strConvertStationName + ", " + strConvertStationName2);
        if (this.mOnChangedRadioListener != null) {
            if (strConvertStationName.equals(this.mCurrStationLable) && strConvertStationName2.equals(this.mCurrStationName)) {
                return;
            }
            this.mCurrStationLable = strConvertStationName;
            this.mCurrStationName = strConvertStationName2;
            this.mOnChangedRadioListener.onChangedDabStationLable(this.mCurrStationLable, this.mCurrStationName);
            this.mOnChangedRadioListener.onChangeFavoriteStatus(isFavoredDab(this.mCurrDabPostion));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"StaticFieldLeak"})
    public void updateListData() {
        new AnonymousClass3().execute(new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayStatusUi() {
        boolean zIsPlaying = CarDabRadioManager.getInstance().isPlaying();
        Log.d(TAG, "DAB updatePlayStatusUi isPlaying:" + zIsPlaying);
        if (this.mOnChangedRadioListener == null || this.mRadioCurrType != SOURCE_OF_DAB) {
            return;
        }
        this.mOnChangedRadioListener.onChangedRadioBand(this.mRadioCurrType, this.mBand, this.mUnit);
        this.mOnChangedRadioListener.onChangeRadioPlayStatus(zIsPlaying);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRadioMessage(DataOfRadio dataOfRadio) {
        if (dataOfRadio.getType() == 0) {
            this.mBand = this.mContext.getString(R.string.fm);
            if (this.mFmKeepTwoDecima) {
                this.mFrequency = String.format(Locale.ENGLISH, "%.2f", Float.valueOf(dataOfRadio.getFreq() / 1000.0f)) + BuildConfig.FLAVOR;
            } else {
                this.mFrequency = (dataOfRadio.getFreq() / 1000.0f) + BuildConfig.FLAVOR;
            }
            this.mUnit = this.mContext.getString(R.string.mhz);
        } else {
            this.mBand = this.mContext.getString(R.string.am);
            this.mFrequency = dataOfRadio.getFreq() + BuildConfig.FLAVOR;
            this.mUnit = this.mContext.getString(R.string.khz);
        }
        if (this.mOnChangedRadioListener != null) {
            this.mOnChangedRadioListener.onChangedRadioBand(this.mRadioCurrType, this.mBand, this.mUnit);
            this.mOnChangedRadioListener.onChangedRadioFrequency(this.mFrequency);
        }
    }

    public void convertDabInfos(DabEnsemble[] dabEnsembleArr, List<DabChannelInfo> list) {
        if (list == null) {
            Log.e(TAG, "convertDabInfos,channelInfoList can 't be null");
            return;
        }
        if (dabEnsembleArr == null || dabEnsembleArr.length == 0) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("convertDabInfos,dabEnsembles is Empty, length: ");
            sb.append(dabEnsembleArr == null ? "null" : Integer.valueOf(dabEnsembleArr.length));
            Log.w(str, sb.toString());
            return;
        }
        for (DabEnsemble dabEnsemble : dabEnsembleArr) {
            DabProperties[] list2 = dabEnsemble.getList();
            if (list2 == null || list2.length <= 0) {
                String str2 = TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("convertDabInfos,properties is Empty, length: ");
                sb2.append(list2 == null ? "null" : Integer.valueOf(list2.length));
                Log.w(str2, sb2.toString());
            } else {
                for (DabProperties dabProperties : list2) {
                    DabChannelInfo dabChannelInfo = new DabChannelInfo(dabEnsemble.getFrequency(), dabEnsemble.getEnsembleId(), dabEnsemble.getLabel(), dabProperties, dabEnsemble.getTab());
                    if (dabProperties.getPdFlag() != 0) {
                        list.add(dabChannelInfo);
                    }
                }
            }
        }
    }

    public String getBand() {
        Log.i(TAG, "getBand:" + this.mBand);
        return this.mBand;
    }

    public String getCurrStationLable() {
        Log.i(TAG, "getCurrStationLable: " + this.mCurrStationLable);
        return this.mCurrStationLable;
    }

    public String getCurrStationName() {
        Log.i(TAG, "getCurrStationName: " + this.mCurrStationName);
        return this.mCurrStationName;
    }

    public String getFrequency() {
        Log.i(TAG, "getFrequency:" + this.mFrequency);
        return this.mFrequency;
    }

    public int getRadioCurrType() {
        Log.i(TAG, "getRadioCurrType: " + this.mRadioCurrType);
        return this.mRadioCurrType;
    }

    public String getRdsCommonString() {
        String rdsPS = CarRadioManager.getInstance().getRdsPS();
        if (!TextUtils.isEmpty(rdsPS)) {
            rdsPS = Utils.convertStationName(rdsPS.trim());
        }
        Log.i(TAG, "getRdsCommonString: psString = " + rdsPS);
        return rdsPS;
    }

    public String getUnit() {
        Log.i(TAG, "getUnit:" + this.mUnit);
        return this.mUnit;
    }

    public boolean isFavoredDab(int i) {
        if (this.dabChannelInfoList.size() <= 0 || i >= this.dabChannelInfoList.size()) {
            Log.i(TAG, "channelInfo is null -----");
            return false;
        }
        DabChannelInfo dabChannelInfo = this.dabChannelInfoList.get(i);
        if (dabChannelInfo instanceof InvalidDabChannelInfo) {
            Log.i(TAG, "current InvalidDabChannelInfo");
            return false;
        }
        if (dabChannelInfo != null) {
            return CarDabRadioManager.getInstance().isFavored(dabChannelInfo.getFrequency(), dabChannelInfo.getEnsembleId(), dabChannelInfo.getServiceId());
        }
        return false;
    }

    public boolean isFavorite() {
        boolean zIsFreqFavored;
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            zIsFreqFavored = isFavoredDab(this.mCurrDabPostion);
        } else {
            if (this.mCarRadioManager != null) {
                try {
                    zIsFreqFavored = this.mCarRadioManager.isFreqFavored(this.mCarRadioManager.getFreq());
                } catch (Exception e) {
                    e.printStackTrace();
                    zIsFreqFavored = false;
                }
            } else {
                Log.i(TAG, "CarRadioManager is null!");
            }
            zIsFreqFavored = false;
        }
        Log.i(TAG, "isFavorite:" + zIsFreqFavored);
        return zIsFreqFavored;
    }

    public boolean isFavorite(@NonNull DataOfRadio dataOfRadio) {
        boolean zIsFreqFavored;
        if (this.mCarRadioManager != null) {
            try {
                zIsFreqFavored = this.mCarRadioManager.isFreqFavored(dataOfRadio);
            } catch (Exception e) {
                e.printStackTrace();
                zIsFreqFavored = false;
            }
            Log.i(TAG, "isFavorite:result=" + zIsFreqFavored + ", freq=" + dataOfRadio.Freq);
            return zIsFreqFavored;
        }
        Log.i(TAG, "CarRadioManager is null!");
        zIsFreqFavored = false;
        Log.i(TAG, "isFavorite:result=" + zIsFreqFavored + ", freq=" + dataOfRadio.Freq);
        return zIsFreqFavored;
    }

    public boolean isPlaying() {
        if (this.mRadioCurrType != SOURCE_OF_DAB) {
            Log.i(TAG, "FM_AM isPlaying:" + this.mIsPlaying);
            return this.mIsPlaying;
        }
        boolean zIsPlaying = CarDabRadioManager.getInstance().isPlaying();
        Log.i(TAG, "DAB isPlaying: " + zIsPlaying);
        return zIsPlaying;
    }

    public boolean isScanStatus() {
        boolean zIsScanStatus = this.mCarRadioManager.isScanStatus();
        Log.i(TAG, "isScanState: " + zIsScanStatus);
        return zIsScanStatus;
    }

    public boolean isSignalPoor() {
        Log.i(TAG, "isSignalPoor:mIsSignalPoor = " + this.mIsSignalPoor);
        return this.mIsSignalPoor;
    }

    public void next() {
        Log.i(TAG, "next, currType = " + this.mRadioCurrType);
        isShowSignalPoorToast();
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            this.mDataThreadPool.execute(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$m20mu9HQKeYwaiJozvS7gmesAi0
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().next();
                }
            });
        } else {
            this.mCarRadioManager.seekDown();
        }
    }

    public void openRadioApp(Context context) {
        Log.i(TAG, "openRadioApp, mRadioCurrType = " + this.mRadioCurrType);
        if (this.mRadioCurrType != SOURCE_OF_DAB || !this.mIsRadioDabPresent) {
            if (this.mIsRadioPresent) {
                Utils.startAppByView(this.mContext, Utils.PACKAGE_MULTIMEDIA, Utils.ACTIVITY_RADIO, Utils.MUSIC_SOURCE_KEY, null);
            }
        } else {
            Intent intent = new Intent("com.yftech.intent.action.start.dabradio");
            intent.putExtra("isAutoPlay", true);
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    public void pause() {
        Log.i(TAG, "pause");
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            this.mDataThreadPool.execute(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$3FxJOHVv86zPqS1zcop3gk-LbFA
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().pause();
                }
            });
        } else {
            this.mCarRadioManager.pause();
        }
    }

    public void play() {
        Log.i(TAG, "play, mRadioCurrType = " + this.mRadioCurrType);
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            this.mDataThreadPool.execute(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$WNI2z9htlzLH3v4C4zOl5t77yso
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().play();
                }
            });
        } else {
            this.mCarRadioManager.requestAudioFocus();
            this.mCarRadioManager.play();
        }
    }

    public void playPause() {
        isShowSignalPoorToast();
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            this.mDataThreadPool.execute(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$iZkVCAOeUCtKn4VXS6pwZwPbcjM
                @Override // java.lang.Runnable
                public final void run() {
                    RadioPresenter.lambda$playPause$3(this.f$0);
                }
            });
        } else if (this.mIsPlaying) {
            pause();
        } else {
            play();
        }
    }

    public void previous() {
        Log.i(TAG, "previous, currType = " + this.mRadioCurrType);
        isShowSignalPoorToast();
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            this.mDataThreadPool.execute(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$RadioPresenter$lsQSBo1xCPj5jC0aJi1clSpIhkI
                @Override // java.lang.Runnable
                public final void run() {
                    CarDabRadioManager.getInstance().previous();
                }
            });
        } else {
            this.mCarRadioManager.seekUp();
        }
    }

    public void setOnChangedRadioListener(OnChangedRadioListener onChangedRadioListener) {
        this.mOnChangedRadioListener = onChangedRadioListener;
    }

    public void switchBand() {
        Log.i(TAG, "switchBand,mRadioCurrType = " + this.mRadioCurrType);
        if (this.mRadioCurrType != SOURCE_OF_FMAM) {
            if (this.mCarRadioManager == null || !this.mIsRadioPresent) {
                return;
            }
            this.mRadioCurrType = SOURCE_OF_FMAM;
            this.mCarRadioManager.setBand(0);
            return;
        }
        if (this.mContext.getString(R.string.fm).equals(this.mBand)) {
            if (this.mCarRadioManager != null) {
                this.mCarRadioManager.setBand(2);
            }
        } else if (this.mContext.getString(R.string.am).equals(this.mBand)) {
            if (this.mIsRadioDabPresent) {
                this.mRadioCurrType = SOURCE_OF_DAB;
                play();
            } else if (this.mCarRadioManager != null) {
                this.mCarRadioManager.setBand(0);
            }
        }
    }

    public void switchFavorite() {
        Log.i(TAG, "switchFavorite");
        isShowSignalPoorToast();
        if (this.mRadioCurrType == SOURCE_OF_DAB) {
            switchDabFavored();
            return;
        }
        if (this.mCarRadioManager == null) {
            Log.i(TAG, "CarRadioManager is null!");
            return;
        }
        DataOfRadio freq = this.mCarRadioManager.getFreq();
        if (this.mCarRadioManager.isFreqFavored(freq)) {
            boolean zRemoveFavor = this.mCarRadioManager.removeFavor(freq);
            Log.d(TAG, "removeFavor result:" + zRemoveFavor);
            if (zRemoveFavor) {
                ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_remove_favor_successful));
                return;
            } else {
                ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_remove_favor_failure));
                return;
            }
        }
        int band = this.mCarRadioManager.getBand();
        DataOfRadio[] favors = this.mCarRadioManager.getFavors(band);
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("band:");
        sb.append(band);
        sb.append(" length:");
        sb.append(favors != null ? Integer.valueOf(favors.length) : "null");
        Log.d(str, sb.toString());
        int i = band == 2 ? 20 : 30;
        if (favors != null && favors.length >= i) {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_add_favor_full));
            return;
        }
        boolean zAddFavor = this.mCarRadioManager.addFavor(freq, i, true);
        Log.d(TAG, "addFavor result:" + zAddFavor);
        if (zAddFavor) {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_add_favor_successful));
        } else {
            ToastUtils.showText(this.mContext, this.mContext.getString(R.string.radio_channel_favor_dialog_add_favor_failure));
        }
    }
}
