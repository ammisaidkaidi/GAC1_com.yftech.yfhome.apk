package com.yftech.yfhome.view;

import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import androidx.viewpager.widget.ViewPager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.car.utils.Loger;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.vehicle.sdk.HostConfig;
import com.yftech.yfhome.BuildConfig;
import com.yftech.yfhome.R;
import com.yftech.yfhome.presenter.BluetoothPresenter;
import com.yftech.yfhome.presenter.CarPresenter;
import com.yftech.yfhome.presenter.MediaPresenter;
import com.yftech.yfhome.presenter.RadioPresenter;
import com.yftech.yfhome.utils.AudioSettingUtil;
import com.yftech.yfhome.utils.BitmapUtils;
import com.yftech.yfhome.utils.Constants;
import com.yftech.yfhome.utils.DialogUtils;
import com.yftech.yfhome.utils.DrawableTextView;
import com.yftech.yfhome.utils.HomeApplication;
import com.yftech.yfhome.utils.MySoundPool;
import com.yftech.yfhome.utils.SharedPrefsUtil;
import com.yftech.yfhome.utils.ToastUtils;
import com.yftech.yfhome.utils.Utils;
import com.yftech.yfhome.utils.WallpaperUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class HomeActivity extends AppCompatActivity implements View.OnClickListener, CarPresenter.OnChangedCarListener, BluetoothPresenter.OnChangedBluetoothListener, RadioPresenter.OnChangedRadioListener, MediaPresenter.OnChangedMediaListener, HomeApplication.ConfigurationChangeLisenter {
    public static final String ACTION_WALLPAPER_MODE_CHANGE = "com.yftech.yfhome.wallpaper_mode_change";
    public static final String SYS_IS_WALLPAPER_MODE = "sys.is.wallpager.mode";
    private static final String TAG = "HomeActivity";
    public static final String WALLPAPER_PATH = Environment.getExternalStorageDirectory() + "/wallpaper/Wallpaper.jpg";
    private ImageView car_mirror;
    private int endX;
    private int endY;
    private boolean isGacLogoPresent;
    public boolean isHideCarModel;
    private ImageView ivDriveMode;
    private ImageView ivWallPaper;
    private ImageView iv_changed;
    private long lastTouchTime;
    private float lastX;
    private float lastY;
    private LinearLayout llDabMessageLayout;
    private AudioManager mAudioManager;
    private BluetoothPresenter mBluetoothPresenter;
    private View mBtButtonBg;
    private DrawableTextView mBtConnect;
    private ImageView mBtKeyboard;
    private ImageView mBtMain;
    private TextView mBtMessage;
    private ImageView mBtSearch;
    private ImageView mBtUser;
    private ImageView mCarFLDoor;
    private ImageView mCarFRDoor;
    private ImageView mCarHood;
    private CarPresenter mCarPresenter;
    private ImageView mCarRLDoor;
    private ImageView mCarRRDoor;
    private ImageView mCarTrunk;
    private ImageView mCarbody;
    private ImageView mCarplayCycle;
    private Context mContext;
    private ImageView mCurrentSource;
    private float mCurrentXPoint;
    private DialogUtils mDialog;
    private View mDrivingModeLayout;
    private TextView mFastCool;
    private TextView mFastWarm;
    private TextView mHomeTime;
    private View mMainLayout;
    private ImageView mMediaCycle;
    private ImageView mMediaNext;
    private ImageView mMediaPlayPause;
    private MediaPresenter mMediaPresenter;
    private ImageView mMediaPriv;
    private ProgressBar mMediaProgress;
    private TextView mModeComfortable;
    private TextView mModeEconomics;
    private TextView mModeSport;
    private TextView mMusicInvalid;
    private View mMusicMessageLayout;
    private TextView mMusicName;
    private TextView mMusicSinger;
    private TextView mPhoneLinkCarlife;
    private TextView mPhoneLinkCarplay;
    private TextView mPhoneLinkEasyconn;
    private TextView mPhoneLinkHicar;
    private TextView mRadioBand;
    private ImageView mRadioBandChange;
    private TextView mRadioFrequency;
    private ImageView mRadioLike;
    private View mRadioMessageLayout;
    private ImageView mRadioNext;
    private ImageView mRadioPlayPause;
    private RadioPresenter mRadioPresenter;
    private ImageView mRadioPriv;
    private TextView mRadioUnit;
    private boolean mRdsPresent;
    private MySoundPool mSoundPool;
    private TextView mSourceSelect;
    private TextView mSourceSelectBt;
    private TextView mSourceSelectCarlife;
    private TextView mSourceSelectCarplay;
    private ImageView mSourceSelectClose;
    private TextView mSourceSelectUSB1;
    private ProgressBar mSourceSelectUSB1Loading;
    private TextView mSourceSelectUSB2;
    private ProgressBar mSourceSelectUSB2Loading;
    private ViewPager mSourceViewPager;
    private Resources newResources;
    private RelativeLayout rel_car;
    private RelativeLayout rlBtCardView;
    private RelativeLayout rlConnectDeviceCardRootView;
    private int startX;
    private int startY;
    private TextView tvDabName;
    private TextView tvDabStationLable;
    private TextView tvTrunkStatus;
    private final int HOUR_10 = 10;
    private final int HOUR_12 = 12;
    private final String ADD_CHAR = "0";
    private final String TIME_SEPARATOR = ":";
    private int mCurrentSourceClick = -1;
    private final int LIMIT_CLICK_AREA = 50;
    private int mCurrentSelectSource = -1;
    private boolean mIsFirstRun = true;
    private final int UPDATE_DELAY_TIME = 250;
    private boolean isSelected = true;
    private final int RC_SOURCE_SELECT = 30;
    private final int RC_PLAY = 40;
    private BitmapDrawable mWallPaperDrawable = null;
    private boolean mWallPaperDrawableChanger = false;
    private boolean isPlgmfunccfgPresent = false;
    private Handler mHandle = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.view.HomeActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Loger.i(HomeActivity.TAG + "handleMessage msg:" + message + ",isSelected:" + HomeActivity.this.isSelected);
            if (message.what == 30 && !HomeActivity.this.isSelected) {
                if (-1 != Utils.getCurrentMediaSource() || HomeActivity.this.mMediaPresenter.getCurrentMediaSource() == 4) {
                    HomeActivity.this.isSelected = true;
                    HomeActivity.this.onChangedMediaMessage(HomeActivity.this.mMediaPresenter.getCurrentTitle(), HomeActivity.this.mMediaPresenter.getCurrentSinger());
                    HomeActivity.this.onChangedMediaProgress(HomeActivity.this.mMediaPresenter.getCurrentProgress());
                    return;
                }
                return;
            }
            if (message.what == 40 && HomeActivity.this.mCurrentSelectSource == -1) {
                String string = SharedPrefsUtil.getInstance(HomeActivity.this.getApplicationContext()).getString(SharedPrefsUtil.TAG_AUDIO_FOCUS_ON_BY_CLIENTID, BuildConfig.FLAVOR);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                int audioFocusByClientId = Utils.getAudioFocusByClientId(string);
                if (audioFocusByClientId != 2) {
                    if (audioFocusByClientId != 7) {
                        return;
                    }
                    HomeActivity.this.mRadioPresenter.play();
                    return;
                }
                if (HomeActivity.this.mMediaPresenter.getBTMusicConnectStatus() == 2) {
                    HomeActivity.this.mMediaPresenter.play(2);
                    return;
                }
                int musicFileExists = CarMediaDataManager.getInstance().getMusicFileExists();
                if (musicFileExists == 0) {
                    return;
                }
                HomeActivity.this.mMediaPresenter.setCurrentMediaSource(musicFileExists == 2 ? 1 : 0);
                MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                if (playMusic == null) {
                    HomeActivity.this.mMediaPresenter.setCurrentTitle(HomeActivity.this.getString(R.string.media_unknown));
                    HomeActivity.this.mMediaPresenter.setCurrentSinger(HomeActivity.this.getString(R.string.media_unknown));
                } else {
                    HomeActivity.this.mMediaPresenter.setCurrentTitle(playMusic.getTitle());
                    HomeActivity.this.mMediaPresenter.setCurrentSinger(playMusic.getArtist());
                }
                HomeActivity.this.updateMediaCard();
                HomeActivity.this.showMediaMessageView(true);
            }
        }
    };
    public boolean IS_DEBUG = false;
    private ViewPager.OnPageChangeListener mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.yftech.yfhome.view.HomeActivity.2
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            Log.i(HomeActivity.TAG, "onPageSelected:" + i);
        }
    };
    private View.OnTouchListener mOnSourcePagerTouchListener = new View.OnTouchListener() { // from class: com.yftech.yfhome.view.HomeActivity.3
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            Log.i(HomeActivity.TAG, "OnTouchListener action:" + action);
            if (3 == action) {
                HomeActivity.this.resetSourceSelectPressedStatus();
                return false;
            }
            switch (view.getId()) {
                case R.id.source_select_bt /* 2131165394 */:
                    if (action == 0) {
                        HomeActivity.this.mCurrentSourceClick = 2;
                        HomeActivity.this.mSourceSelectBt.setPressed(true);
                    }
                    return false;
                case R.id.source_select_carlife /* 2131165395 */:
                    if (action == 0) {
                        HomeActivity.this.mCurrentSourceClick = 3;
                        HomeActivity.this.mSourceSelectCarlife.setPressed(true);
                    }
                    return false;
                case R.id.source_select_carplay /* 2131165396 */:
                    if (action == 0) {
                        HomeActivity.this.mCurrentSourceClick = 4;
                        HomeActivity.this.mSourceSelectCarplay.setPressed(true);
                    }
                    return false;
                case R.id.source_select_close /* 2131165397 */:
                case R.id.source_select_layout /* 2131165398 */:
                case R.id.source_select_usb1_loading /* 2131165400 */:
                case R.id.source_select_usb2_loading /* 2131165402 */:
                default:
                    return false;
                case R.id.source_select_usb1 /* 2131165399 */:
                    if (action == 0) {
                        HomeActivity.this.mCurrentSourceClick = 0;
                        HomeActivity.this.mSourceSelectUSB1.setPressed(true);
                    }
                    return false;
                case R.id.source_select_usb2 /* 2131165401 */:
                    if (action == 0) {
                        HomeActivity.this.mCurrentSourceClick = 1;
                        HomeActivity.this.mSourceSelectUSB2.setPressed(true);
                    }
                    return false;
                case R.id.source_view_pager /* 2131165403 */:
                    switch (action) {
                        case 0:
                            HomeActivity.this.startX = (int) motionEvent.getX();
                            HomeActivity.this.startY = (int) motionEvent.getY();
                            break;
                        case 1:
                            HomeActivity.this.endX = (int) motionEvent.getX();
                            HomeActivity.this.endY = (int) motionEvent.getY();
                            int iAbs = Math.abs(HomeActivity.this.endX - HomeActivity.this.startX);
                            int iAbs2 = Math.abs(HomeActivity.this.endY - HomeActivity.this.startY);
                            if (50 > iAbs && 50 > iAbs2) {
                                HomeActivity.this.startSource(HomeActivity.this.mCurrentSourceClick);
                            }
                            HomeActivity.this.resetSourceSelectPressedStatus();
                            HomeActivity.this.mCurrentSourceClick = -1;
                            break;
                        case 2:
                            HomeActivity.this.endX = (int) motionEvent.getX();
                            HomeActivity.this.endY = (int) motionEvent.getY();
                            int iAbs3 = Math.abs(HomeActivity.this.endX - HomeActivity.this.startX);
                            int iAbs4 = Math.abs(HomeActivity.this.endY - HomeActivity.this.startY);
                            if (50 < iAbs3 || 50 < iAbs4) {
                                HomeActivity.this.resetSourceSelectPressedStatus();
                            }
                            break;
                    }
                    break;
            }
        }
    };
    private boolean isClickOnCar = false;
    private View.OnTouchListener mOnCarTouchListener = new View.OnTouchListener() { // from class: com.yftech.yfhome.view.HomeActivity.4
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent != null) {
                float x = motionEvent.getX(0);
                switch (motionEvent.getAction()) {
                    case 0:
                        HomeActivity.this.isClickOnCar = true;
                        HomeActivity.this.lastTouchTime = System.currentTimeMillis();
                        HomeActivity.this.lastX = motionEvent.getX();
                        HomeActivity.this.lastY = motionEvent.getY();
                        if (!HomeActivity.this.mCarPresenter.hasCarDoorOpen() && CarPresenter.getmCurrentIndex() == 0 && HomeActivity.this.isGacLogoPresent) {
                            HomeActivity.this.mCarbody.setImageResource(R.mipmap.home_360_00342);
                        }
                        HomeActivity.this.mCurrentXPoint = x;
                        break;
                    case 1:
                        if (HomeActivity.this.isClickOnCar && System.currentTimeMillis() - HomeActivity.this.lastTouchTime < 200 && Utils.isCanOpenMyCar()) {
                            HomeActivity.this.mSoundPool.playInterfaceSoundEffect();
                            Utils.startAppByAction(HomeActivity.this.getApplicationContext(), new Intent(Utils.MYCAR_ACTION_UI_START));
                        }
                        HomeActivity.this.mCurrentXPoint = x;
                        break;
                    case 2:
                        if (HomeActivity.this.isGacLogoPresent) {
                            HomeActivity.this.isClickOnCar = Math.abs(motionEvent.getX() - HomeActivity.this.lastX) < 5.0f && Math.abs(motionEvent.getY() - HomeActivity.this.lastY) < 5.0f;
                            if (!HomeActivity.this.mCarPresenter.hasCarDoorOpen()) {
                                HomeActivity.this.mCarHood.setVisibility(8);
                                HomeActivity.this.car_mirror.setVisibility(8);
                                HomeActivity.this.mCarTrunk.setVisibility(8);
                                HomeActivity.this.mCarFLDoor.setVisibility(8);
                                HomeActivity.this.mCarFRDoor.setVisibility(8);
                                HomeActivity.this.mCarRLDoor.setVisibility(8);
                                HomeActivity.this.mCarRRDoor.setVisibility(8);
                                if (x > 0.0f && x > HomeActivity.this.mCurrentXPoint) {
                                    HomeActivity.this.mCarPresenter.adjustCarBody(1);
                                } else if (x > 0.0f && x < HomeActivity.this.mCurrentXPoint) {
                                    HomeActivity.this.mCarPresenter.adjustCarBody(0);
                                }
                            }
                            HomeActivity.this.mCurrentXPoint = x;
                            break;
                        }
                        break;
                    default:
                        HomeActivity.this.mCurrentXPoint = x;
                        break;
                }
                return true;
            }
            return true;
        }
    };
    private View.OnTouchListener mMediaContrlBtnTouchListener = new View.OnTouchListener() { // from class: com.yftech.yfhome.view.HomeActivity.5
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!Utils.isCarplayCertificate() || HomeActivity.this.mMediaPresenter.getCurrentMediaSource() != 4) {
                return false;
            }
            int action = motionEvent.getAction();
            switch (view.getId()) {
                case R.id.media_next /* 2131165321 */:
                    if (action == 0) {
                        HomeActivity.this.mMediaNext.setBackgroundResource(R.drawable.media_shape_radius);
                        HomeActivity.this.mAudioManager.playSoundEffect(0);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(4);
                    } else if (action == 1) {
                        HomeActivity.this.mMediaNext.setBackground(null);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(0);
                    }
                    return true;
                case R.id.media_play_pause /* 2131165322 */:
                    if (action == 0) {
                        HomeActivity.this.mAudioManager.playSoundEffect(0);
                        HomeActivity.this.mMediaPlayPause.setBackgroundResource(R.drawable.media_shape_radius);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(3);
                    } else if (action == 1) {
                        HomeActivity.this.mMediaPlayPause.setBackground(null);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(0);
                    }
                    return true;
                case R.id.media_priv /* 2131165323 */:
                    if (action == 0) {
                        HomeActivity.this.mMediaPriv.setBackgroundResource(R.drawable.media_shape_radius);
                        HomeActivity.this.mAudioManager.playSoundEffect(0);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(5);
                    } else if (action == 1) {
                        HomeActivity.this.mMediaPriv.setBackground(null);
                        HomeActivity.this.mMediaPresenter.sendCarPlayTouchEvent(0);
                    }
                    return true;
                default:
                    return true;
            }
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.yftech.yfhome.view.HomeActivity.13
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                Log.i(HomeActivity.TAG, "onReceive action:" + action);
                if ("android.intent.action.TIME_TICK".equals(action) || "android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action)) {
                    HomeActivity.this.updateHomeTime();
                    return;
                }
                if (Utils.WallPaperSettingAction.equals(action)) {
                    HomeActivity.this.mWallPaperDrawableChanger = true;
                    String stringExtra = intent.getStringExtra(Utils.WallPaperSettingData);
                    String str = HomeActivity.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("receive wallpaper path, path is ");
                    sb.append(TextUtils.isEmpty(stringExtra) ? "null!!!" : stringExtra);
                    Log.e(str, sb.toString());
                    HomeActivity.this.setCurrWallPaperMode(true);
                    HomeActivity.this.rel_car.setVisibility(4);
                    HomeActivity.this.ivWallPaper.setImageDrawable(new BitmapDrawable(HomeActivity.this.getResources(), BitmapUtils.decodeSampledBitmapFromFile(stringExtra, Constants.displayWidth, Constants.displayHeight)));
                }
            }
        }
    };

    /* JADX INFO: renamed from: com.yftech.yfhome.view.HomeActivity$14, reason: invalid class name */
    static /* synthetic */ class AnonymousClass14 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState = new int[ICarDoor.TailDoorState.values().length];

        static {
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.FULLY_OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.OPENING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.CLOSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.TG_BRAKE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.HOLD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[ICarDoor.TailDoorState.FULLY_CLOSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void changeLanguage(Configuration configuration) {
        if (this.newResources == null || this.newResources.getConfiguration().locale.getLanguage() != configuration.locale.getLanguage()) {
            this.newResources = createConfigurationContext(configuration).getResources();
        }
    }

    private void createDefWallpaper() {
        try {
            String wallPaperOutputPath = WallpaperUtils.getWallPaperOutputPath();
            Log.i(TAG, "copy outPath:" + wallPaperOutputPath);
            File file = new File(WallpaperUtils.getWallPaperOutputPath());
            if (!file.exists()) {
                Log.i(TAG, "createNewFile:" + wallPaperOutputPath);
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(this.mContext.getResources(), R.mipmap.def_wallpaper);
            if (bitmapDecodeResource == null) {
                Log.i(TAG, "def wallpaper is null");
                return;
            }
            if (bitmapDecodeResource.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream)) {
                Settings.Global.putString(this.mContext.getContentResolver(), "wallpaper_original_path", wallPaperOutputPath);
                Settings.Global.putString(this.mContext.getContentResolver(), "wallpaper_md5", WallpaperUtils.getFileMD5(new File(wallPaperOutputPath)));
            } else {
                Log.i(TAG, "createDefWallpaper: fail !!!");
            }
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void initCarView() {
        updateDrivingMode(this.mCarPresenter.getDrivingMode());
        updateACMode(this.mCarPresenter.getACMode());
        this.mCarPresenter.resetCarBodyPicture();
        if (this.mCarPresenter.hasCarDoorOpen()) {
            onChangedHood(this.mCarPresenter.isHoodOpen());
            onChangedTrunk(this.mCarPresenter.isTrunkOpen());
            onChangedFrontLeftDoor(this.mCarPresenter.isFrontLeftDoorOpen());
            onChangedFrontRightDoor(this.mCarPresenter.isFrontRightDoorOpen());
            onChangedRearLeftDoor(this.mCarPresenter.isRearLeftDoorOpen());
            onChangedRearRightDoor(this.mCarPresenter.isRearRightDoorOpen());
            return;
        }
        if (!this.isGacLogoPresent) {
            onChangedCarBodyNoLogoReset();
            return;
        }
        this.mCarHood.setVisibility(8);
        this.car_mirror.setVisibility(8);
        this.mCarTrunk.setVisibility(8);
        this.mCarFLDoor.setVisibility(8);
        this.mCarFRDoor.setVisibility(8);
        this.mCarRLDoor.setVisibility(8);
        this.mCarRRDoor.setVisibility(8);
    }

    private void initCard() {
        updatePhoneLinkCard();
        updateMediaCard();
        if (Utils.isRadioPresent() || Utils.isRadioDABPresent()) {
            updateRadioCard();
        }
        updateBTCard(this.mBluetoothPresenter.getBTPhoneConnectStatus());
        updateConnectDeviceStatus();
    }

    private void initPresenter() {
        this.mCarPresenter = CarPresenter.getInstance(this);
        this.mCarPresenter.setOnChangedCarListener(this);
        this.mBluetoothPresenter = BluetoothPresenter.getInstance(this);
        this.mBluetoothPresenter.setOnChangedBluetoothListener(this);
        this.mRadioPresenter = RadioPresenter.getInstance(this);
        this.mRadioPresenter.setOnChangedRadioListener(this);
        this.mMediaPresenter = MediaPresenter.getInstance(this);
        this.mMediaPresenter.setOnChangedMediaListener(this);
        if (HomeApplication.getInstance() != null) {
            HomeApplication.getInstance().registerConfigurationChangeLisenter(this);
        }
    }

    private void initReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction(Utils.WallPaperSettingAction);
        registerReceiver(this.mReceiver, intentFilter);
        updateHomeTime();
    }

    private void initView() {
        this.mSourceViewPager = (ViewPager) findViewById(R.id.source_view_pager);
        getLayoutInflater();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.source_page1_layout, (ViewGroup) null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(viewInflate);
        this.mSourceViewPager.setAdapter(new SourcePagerAdapter(arrayList));
        this.mMainLayout = findViewById(R.id.main_layout);
        this.ivWallPaper = (ImageView) findViewById(R.id.iv_wall_paper);
        this.mMusicMessageLayout = findViewById(R.id.music_message_layout);
        this.mRadioMessageLayout = findViewById(R.id.radio_message_layout);
        this.mCarbody = (ImageView) findViewById(R.id.car_body);
        this.mCarTrunk = (ImageView) findViewById(R.id.car_trunk);
        this.mCarRRDoor = (ImageView) findViewById(R.id.car_rr_door);
        this.mCarFRDoor = (ImageView) findViewById(R.id.car_fr_door);
        this.mCarRLDoor = (ImageView) findViewById(R.id.car_rl_door);
        this.mCarFLDoor = (ImageView) findViewById(R.id.car_fl_door);
        this.mCarHood = (ImageView) findViewById(R.id.car_hood);
        this.car_mirror = (ImageView) findViewById(R.id.car_mirror);
        this.mCurrentSource = (ImageView) findViewById(R.id.current_source);
        this.mSourceSelectClose = (ImageView) findViewById(R.id.source_select_close);
        this.mMediaCycle = (ImageView) findViewById(R.id.media_cycle);
        this.mCarplayCycle = (ImageView) findViewById(R.id.carplay_cycle);
        this.mMediaPriv = (ImageView) findViewById(R.id.media_priv);
        this.mMediaPlayPause = (ImageView) findViewById(R.id.media_play_pause);
        this.mMediaNext = (ImageView) findViewById(R.id.media_next);
        this.mSourceSelectUSB1Loading = (ProgressBar) viewInflate.findViewById(R.id.source_select_usb1_loading);
        this.mSourceSelectUSB2Loading = (ProgressBar) viewInflate.findViewById(R.id.source_select_usb2_loading);
        this.mRadioPriv = (ImageView) findViewById(R.id.radio_priv);
        this.mRadioPlayPause = (ImageView) findViewById(R.id.radio_play_pause);
        this.mRadioNext = (ImageView) findViewById(R.id.radio_next);
        this.mRadioLike = (ImageView) findViewById(R.id.radio_like);
        this.mRadioBandChange = (ImageView) findViewById(R.id.radio_band_change);
        this.mBtButtonBg = findViewById(R.id.bt_button_bg);
        this.mBtMain = (ImageView) findViewById(R.id.bt_main);
        this.rlBtCardView = (RelativeLayout) findViewById(R.id.rl_bt_carview);
        this.mBtKeyboard = (ImageView) findViewById(R.id.bt_keyboard);
        this.mBtUser = (ImageView) findViewById(R.id.bt_user);
        this.mBtSearch = (ImageView) findViewById(R.id.bt_search);
        this.mMusicName = (TextView) findViewById(R.id.music_name);
        this.mMusicSinger = (TextView) findViewById(R.id.music_singer);
        this.mMusicInvalid = (TextView) findViewById(R.id.music_invalid);
        this.mSourceSelect = (TextView) findViewById(R.id.source_select);
        this.mSourceSelectBt = (TextView) viewInflate.findViewById(R.id.source_select_bt);
        this.mSourceSelectUSB1 = (TextView) viewInflate.findViewById(R.id.source_select_usb1);
        this.mSourceSelectUSB2 = (TextView) viewInflate.findViewById(R.id.source_select_usb2);
        this.mSourceSelectCarplay = (TextView) viewInflate.findViewById(R.id.source_select_carplay);
        this.mSourceSelectCarlife = (TextView) viewInflate.findViewById(R.id.source_select_carlife);
        this.mRadioBand = (TextView) findViewById(R.id.radio_band);
        this.mRadioFrequency = (TextView) findViewById(R.id.radio_frequency);
        this.mRadioUnit = (TextView) findViewById(R.id.radio_unit);
        this.mBtMessage = (TextView) findViewById(R.id.bt_message);
        this.mBtConnect = (DrawableTextView) findViewById(R.id.bt_connect);
        this.mHomeTime = (TextView) findViewById(R.id.home_time);
        this.mFastCool = (TextView) findViewById(R.id.fast_cool);
        this.mFastWarm = (TextView) findViewById(R.id.fast_warm);
        this.iv_changed = (ImageView) findViewById(R.id.iv_changed);
        this.rel_car = (RelativeLayout) findViewById(R.id.rel_car);
        this.mDrivingModeLayout = findViewById(R.id.layout_driving_mode);
        this.mModeSport = (TextView) findViewById(R.id.mode_sport);
        this.mModeComfortable = (TextView) findViewById(R.id.mode_comfortable);
        this.mModeEconomics = (TextView) findViewById(R.id.mode_economics);
        this.mMediaProgress = (ProgressBar) findViewById(R.id.media_progress);
        this.mPhoneLinkHicar = (TextView) findViewById(R.id.phone_link_hicar);
        this.mPhoneLinkCarplay = (TextView) findViewById(R.id.phone_link_carplay);
        this.mPhoneLinkCarlife = (TextView) findViewById(R.id.phone_link_carlife);
        this.mSourceViewPager.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mPhoneLinkEasyconn = (TextView) findViewById(R.id.phone_link_easyconn);
        this.mPhoneLinkEasyconn.setOnClickListener(this);
        this.rlConnectDeviceCardRootView = (RelativeLayout) findViewById(R.id.rl_connect_device_card_root_view);
        this.mMusicMessageLayout.setOnClickListener(this);
        this.mRadioMessageLayout.setOnClickListener(this);
        this.mCurrentSource.setOnClickListener(this);
        this.mSourceSelectClose.setOnClickListener(this);
        this.mMediaCycle.setOnClickListener(this);
        this.mCarplayCycle.setOnClickListener(this);
        this.mMediaPriv.setOnClickListener(this);
        this.mMediaPriv.setOnTouchListener(this.mMediaContrlBtnTouchListener);
        this.mMediaPlayPause.setOnClickListener(this);
        this.mMediaPlayPause.setOnTouchListener(this.mMediaContrlBtnTouchListener);
        this.mMediaNext.setOnClickListener(this);
        this.mMediaNext.setOnTouchListener(this.mMediaContrlBtnTouchListener);
        this.mRadioPriv.setOnClickListener(this);
        this.mRadioPlayPause.setOnClickListener(this);
        this.mRadioNext.setOnClickListener(this);
        this.mRadioLike.setOnClickListener(this);
        this.mRadioBandChange.setOnClickListener(this);
        this.mBtMain.setOnClickListener(this);
        this.rlBtCardView.setOnClickListener(this);
        this.mBtKeyboard.setOnClickListener(this);
        this.mBtUser.setOnClickListener(this);
        this.mBtSearch.setOnClickListener(this);
        this.mSourceSelectBt.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mSourceSelectUSB1.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mSourceSelectUSB2.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mSourceSelectCarplay.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mSourceSelectCarlife.setOnTouchListener(this.mOnSourcePagerTouchListener);
        this.mBtConnect.setOnClickListener(this);
        this.mCarbody.setOnTouchListener(this.mOnCarTouchListener);
        this.mSourceViewPager.addOnPageChangeListener(this.mOnPageChangeListener);
        this.mFastCool.setOnClickListener(this);
        this.mFastWarm.setOnClickListener(this);
        this.iv_changed.setOnClickListener(this);
        this.mModeEconomics.setOnClickListener(this);
        this.mModeComfortable.setOnClickListener(this);
        this.mModeSport.setOnClickListener(this);
        this.mPhoneLinkHicar.setOnClickListener(this);
        this.mPhoneLinkCarlife.setOnClickListener(this);
        this.mPhoneLinkCarplay.setOnClickListener(this);
        this.llDabMessageLayout = (LinearLayout) findViewById(R.id.radio_dab_message_layout);
        this.llDabMessageLayout.setOnClickListener(this);
        this.tvDabStationLable = (TextView) findViewById(R.id.radio_dab_station_lable);
        this.tvDabName = (TextView) findViewById(R.id.radio_dab_name);
        boolean zIsWallpaperPresent = HostConfig.isWallpaperPresent();
        boolean zIsRearviewMirrorAdjustmentPresent = CarConfig.isRearviewMirrorAdjustmentPresent();
        boolean zIsEasyConnectPresent = HostConfig.isEasyConnectPresent();
        boolean z = Utils.isRadioPresent() || Utils.isRadioDABPresent();
        this.isPlgmfunccfgPresent = CarConfig.isPlgmfunccfgPresent();
        this.mRdsPresent = Utils.isRadioRdsPresent();
        if (this.IS_DEBUG) {
            this.isPlgmfunccfgPresent = true;
            zIsWallpaperPresent = true;
            zIsRearviewMirrorAdjustmentPresent = true;
            zIsEasyConnectPresent = true;
            z = true;
        }
        Log.i(TAG, "initView: isWallpaperPresent = " + zIsWallpaperPresent + ",  isRearviewMirrorAdjustmentPresent = " + zIsRearviewMirrorAdjustmentPresent + ",  isEasyConnectPresent = " + zIsEasyConnectPresent + ", isRadioPresent = " + z);
        this.mPhoneLinkEasyconn.setVisibility(zIsEasyConnectPresent ? 0 : 8);
        ImageView imageView = (ImageView) findViewById(R.id.iv_changed);
        imageView.setOnClickListener(this);
        imageView.setVisibility(zIsWallpaperPresent ? 0 : 4);
        TextView textView = (TextView) findViewById(R.id.iv_rearView);
        textView.setOnClickListener(this);
        textView.setVisibility(zIsRearviewMirrorAdjustmentPresent ? 0 : 4);
        this.tvTrunkStatus = (TextView) findViewById(R.id.tv_trunk_status);
        this.tvTrunkStatus.setOnClickListener(this);
        this.tvTrunkStatus.setVisibility(this.isPlgmfunccfgPresent ? 0 : 4);
        this.ivDriveMode = (ImageView) findViewById(R.id.iv_drive_mode);
        this.ivDriveMode.setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.radio_root_layout)).setVisibility(z ? 0 : 8);
    }

    public static /* synthetic */ void lambda$onCreate$0(HomeActivity homeActivity) {
        SystemClock.sleep(3000L);
        homeActivity.createDefWallpaper();
    }

    private String pickPhoneLinkTip(String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        String string = BuildConfig.FLAVOR;
        switch (str) {
            case "carlife":
                string = getString(R.string.baidu_carlife);
                break;
            case "hicar":
                string = getString(R.string.huawei_hicar);
                break;
            case "carplay":
                string = getString(R.string.apple_carplay);
                break;
            case "easyconn":
                string = getString(R.string.easeconn);
                break;
        }
        return getString(R.string.changedphonelinktip, new Object[]{string});
    }

    private void registerTestReceiver() {
        registerReceiver(new TestReceiver(), new IntentFilter(TestReceiver.ACTION));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetSourceSelectPressedStatus() {
        this.mSourceSelectBt.setPressed(false);
        this.mSourceSelectUSB1.setPressed(false);
        this.mSourceSelectUSB2.setPressed(false);
        this.mSourceSelectCarplay.setPressed(false);
        this.mSourceSelectCarlife.setPressed(false);
    }

    private void sendTrunkCmd() {
        ICarDoor.TailDoorState tailDoorState = CarDoorManager.get().getTailDoorState();
        Log.i(TAG, "sendTrunkCmd: curr doorState  = " + tailDoorState);
        switch (AnonymousClass14.$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[tailDoorState.ordinal()]) {
            case 1:
                CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.FULLY_CLOSE);
                break;
            case 2:
            case 3:
            case 4:
                CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.STOP);
                break;
            case 5:
                int tailDoorTravelPercent = CarDoorManager.get().getTailDoorTravelPercent();
                boolean z = tailDoorTravelPercent > 0 && tailDoorTravelPercent < 20;
                Log.i(TAG, "sendTrunkCmd: then is HOLD !! 当前开启百分比 : " + tailDoorTravelPercent + ",   unClose = " + z);
                if (!z) {
                    CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.FULLY_CLOSE);
                } else {
                    this.mDialog.setTitleAndContentAndBtnStr(getString(R.string.back_door_adjust), getString(R.string.close_trunk_waring_tips), getString(R.string.goto_adjust), getString(R.string.ignore)).setOnButtonListener(new DialogUtils.OnButtonListener() { // from class: com.yftech.yfhome.view.HomeActivity.9
                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onCancel() {
                            HomeActivity.this.mDialog.dismiss();
                        }

                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onSure() {
                            Intent intent = new Intent(Utils.MYCAR_ACTION_UI_START);
                            intent.putExtra(Utils.MYCAR_DATA_SCHEME, 10);
                            Utils.startAppByAction(HomeActivity.this.getApplicationContext(), intent);
                            HomeActivity.this.mDialog.dismiss();
                        }
                    }).show();
                    this.mSoundPool.playPopDlgSoundEffect();
                }
                break;
            case 6:
                CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.FULLY_OPEN);
                if (CarDoorManager.get().getTailDoorPercent() != 100) {
                    ToastUtils.showText(this, getText(R.string.open_back_door_memory_position), 1);
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrWallPaperMode(boolean z) {
        Log.i(TAG, "setCurrWallPaperMode: isWallPaper = " + z);
        SystemProperties.set(SYS_IS_WALLPAPER_MODE, String.valueOf(z));
        Intent intent = new Intent(ACTION_WALLPAPER_MODE_CHANGE);
        intent.putExtra(SYS_IS_WALLPAPER_MODE, z);
        sendBroadcast(intent);
        SharedPrefsUtil.getInstance(getApplicationContext()).save(SharedPrefsUtil.TAG_IS_WALLPAPER_MODE, Boolean.valueOf(z));
    }

    private void setTvTrunkDrawable(int i) {
        Drawable drawable = getResources().getDrawable(i);
        drawable.setBounds(0, 0, 56, 56);
        Log.i(TAG, "setTvTrunkDrawable: " + Utils.isRtl() + ",  lange = " + Utils.isArLanguage());
        if (Utils.isRtl()) {
            this.tvTrunkStatus.setCompoundDrawables(null, null, drawable, null);
        } else {
            this.tvTrunkStatus.setCompoundDrawables(drawable, null, null, null);
        }
    }

    private void showCarlifeButtonView() {
        Drawable drawable;
        if (this.mMediaPresenter.isCarlifeConnect()) {
            drawable = ContextCompat.getDrawable(getApplication(), R.mipmap.home_card_icon_carlive_sel);
            this.mSourceSelectCarlife.setTextColor(-1);
        } else {
            drawable = ContextCompat.getDrawable(getApplication(), R.mipmap.home_card_icon_carlive_nor);
            this.mSourceSelectCarlife.setTextColor(1308622847);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, 54, 54);
        }
        this.mSourceSelectCarlife.setCompoundDrawables(null, drawable, null, null);
    }

    private void showCarplayButtonView() {
        Drawable drawable;
        if (this.mMediaPresenter.isCarplayConnect()) {
            drawable = ContextCompat.getDrawable(getApplication(), R.mipmap.home_card_icon_carplay_sel);
            this.mSourceSelectCarplay.setTextColor(-1);
        } else {
            drawable = ContextCompat.getDrawable(getApplication(), R.mipmap.home_card_icon_carplay_nor);
            this.mSourceSelectCarplay.setTextColor(1308622847);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, 54, 54);
        }
        this.mSourceSelectCarplay.setCompoundDrawables(null, drawable, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMediaMessageView(boolean z) {
        Log.e(TAG, "showMediaMessageView:isCanHandle=" + z);
        this.mMediaPriv.setAlpha(z ? 1.0f : 0.3f);
        this.mMediaPriv.setEnabled(z);
        this.mMediaPlayPause.setAlpha(z ? 1.0f : 0.3f);
        this.mMediaPlayPause.setEnabled(z);
        this.mMediaNext.setAlpha(z ? 1.0f : 0.3f);
        this.mMediaNext.setEnabled(z);
        this.mMediaCycle.setAlpha(z ? 1.0f : 0.3f);
        this.mMediaCycle.setEnabled(z);
        this.mCarplayCycle.setAlpha(z ? 1.0f : 0.3f);
        this.mCarplayCycle.setEnabled(z);
        if (this.mMediaPresenter.getCurrentMediaSource() == 0 || 1 == this.mMediaPresenter.getCurrentMediaSource()) {
            onChangeCycleMode(CarMusicManager.getInstance().getPlayMode());
            this.mMediaCycle.setVisibility(0);
        } else {
            this.mMediaCycle.setVisibility(8);
        }
        this.mCurrentSource.setVisibility(0);
        this.mMusicMessageLayout.setVisibility(0);
        this.mMediaPriv.setVisibility(0);
        this.mMediaPlayPause.setVisibility(0);
        this.mMediaNext.setVisibility(0);
        this.mSourceSelectClose.setVisibility(8);
        this.mSourceSelect.setVisibility(8);
        this.mSourceViewPager.setVisibility(8);
    }

    private void showMediaMessageViewDelay(int i) {
        this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.view.HomeActivity.11
            @Override // java.lang.Runnable
            public void run() {
                if (HomeActivity.this.mCurrentSelectSource == -1 || HomeActivity.this.mMediaPresenter.getCurrentMediaSource() == HomeActivity.this.mCurrentSelectSource) {
                    return;
                }
                HomeActivity.this.showMediaMessageView(false);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSourceSelectView() {
        this.mCurrentSource.setVisibility(8);
        this.mMediaCycle.setVisibility(8);
        this.mCarplayCycle.setVisibility(8);
        this.mMusicMessageLayout.setVisibility(8);
        this.mMediaPriv.setVisibility(8);
        this.mMediaPlayPause.setVisibility(8);
        this.mMediaNext.setVisibility(8);
        this.mMediaProgress.setVisibility(8);
        this.mSourceSelectClose.setVisibility(this.mMediaPresenter.getCurrentMediaSource() != -1 ? 0 : 8);
        this.mSourceSelect.setVisibility(0);
        this.mSourceViewPager.setVisibility(0);
        Drawable drawable = ContextCompat.getDrawable(getApplication(), R.mipmap.home_shouye_ly_nor);
        if (drawable != null) {
            drawable.setBounds(0, 0, 54, 54);
        }
        this.mSourceSelectBt.setCompoundDrawables(null, drawable, null, null);
        showUsbButtonView(0, this.mMediaPresenter.getUsbStatus(0));
        showUsbButtonView(1, this.mMediaPresenter.getUsbStatus(1));
        showCarplayButtonView();
        showCarlifeButtonView();
        Log.i(TAG, "showSourceSelectView: updateSouce !!!");
        updateSource(this.mMediaPresenter.getCurrentMediaSource());
    }

    private void showUsbButtonView(int i, int i2) {
        switch (i) {
            case 0:
                switch (i2) {
                    case 0:
                    case 3:
                        this.mSourceSelectUSB1Loading.setVisibility(8);
                        this.mSourceSelectUSB1.setEnabled(true);
                        Drawable drawable = getResources().getDrawable(R.mipmap.home_card_icon_usb01_nor);
                        drawable.setBounds(0, 0, 54, 54);
                        this.mSourceSelectUSB1.setCompoundDrawables(null, drawable, null, null);
                        this.mSourceSelectUSB1.setTextColor(1308622847);
                        break;
                    case 1:
                        this.mSourceSelectUSB1Loading.setVisibility(8);
                        this.mSourceSelectUSB1.setEnabled(true);
                        Drawable drawable2 = getResources().getDrawable(R.mipmap.home_card_icon_usb01_sel);
                        drawable2.setBounds(0, 0, 54, 54);
                        this.mSourceSelectUSB1.setCompoundDrawables(null, drawable2, null, null);
                        this.mSourceSelectUSB1.setTextColor(-1);
                        break;
                    case 2:
                        this.mSourceSelectUSB1Loading.setVisibility(0);
                        this.mSourceSelectUSB1.setEnabled(false);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(0);
                        colorDrawable.setBounds(0, 6, 54, 60);
                        this.mSourceSelectUSB1.setCompoundDrawables(null, colorDrawable, null, null);
                        this.mSourceSelectUSB1.setTextColor(1308622847);
                        break;
                }
                break;
            case 1:
                switch (i2) {
                    case 0:
                    case 3:
                        this.mSourceSelectUSB2Loading.setVisibility(8);
                        this.mSourceSelectUSB2.setEnabled(true);
                        Drawable drawable3 = getResources().getDrawable(R.mipmap.home_card_icon_usb02_nor);
                        drawable3.setBounds(0, 0, 54, 54);
                        this.mSourceSelectUSB2.setCompoundDrawables(null, drawable3, null, null);
                        this.mSourceSelectUSB2.setTextColor(1308622847);
                        break;
                    case 1:
                        this.mSourceSelectUSB2Loading.setVisibility(8);
                        this.mSourceSelectUSB2.setEnabled(true);
                        Drawable drawable4 = getResources().getDrawable(R.mipmap.home_card_icon_usb02_sel);
                        drawable4.setBounds(0, 0, 54, 54);
                        this.mSourceSelectUSB2.setCompoundDrawables(null, drawable4, null, null);
                        this.mSourceSelectUSB2.setTextColor(-1);
                        break;
                    case 2:
                        this.mSourceSelectUSB2Loading.setVisibility(0);
                        this.mSourceSelectUSB2.setEnabled(false);
                        ColorDrawable colorDrawable2 = new ColorDrawable();
                        colorDrawable2.setColor(0);
                        colorDrawable2.setBounds(0, 6, 54, 60);
                        this.mSourceSelectUSB2.setCompoundDrawables(null, colorDrawable2, null, null);
                        this.mSourceSelectUSB2.setTextColor(1308622847);
                        break;
                }
                break;
        }
    }

    private void startAcMode(int i) {
        switch (i) {
            case 0:
                if (this.mCarPresenter.getACMode() != 0) {
                    this.mFastCool.setSelected(true);
                    ToastUtils.showText(this, getText(R.string.fast_cool_open).toString(), 1);
                    this.mFastWarm.setSelected(false);
                    this.mSoundPool.playCoolSoundEffect();
                    this.mCarPresenter.setACMode(0, this.mFastCool.isSelected());
                }
                break;
            case 1:
                if (this.mCarPresenter.getACMode() != 1) {
                    this.mFastWarm.setSelected(true);
                    ToastUtils.showText(this, getText(R.string.fast_warm_open).toString(), 1);
                    this.mFastCool.setSelected(false);
                    this.mSoundPool.playHeatSoundEffect();
                    this.mCarPresenter.setACMode(1, this.mFastWarm.isSelected());
                }
                break;
        }
    }

    private void startAnimator(ImageView imageView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSource(int i) {
        if (-1 != i) {
            this.mAudioManager.playSoundEffect(0);
        }
        if (2 == i && this.mSourceSelectBt.isPressed()) {
            onClick(this.mSourceSelectBt);
            return;
        }
        if (i == 0 && this.mSourceSelectUSB1.isPressed()) {
            onClick(this.mSourceSelectUSB1);
            return;
        }
        if (1 == i && this.mSourceSelectUSB2.isPressed()) {
            onClick(this.mSourceSelectUSB2);
            return;
        }
        if (4 == i && this.mSourceSelectCarplay.isPressed()) {
            onClick(this.mSourceSelectCarplay);
        } else if (3 == i && this.mSourceSelectCarlife.isPressed()) {
            onClick(this.mSourceSelectCarlife);
        }
    }

    private boolean startUsbSource(int i, int i2) {
        int usbStatus = this.mMediaPresenter.getUsbStatus(i);
        if (usbStatus == 0) {
            ToastUtils.showText(this.mContext, getText(R.string.usb_no_exist_warning));
            return false;
        }
        if (1 == usbStatus) {
            this.mCurrentSelectSource = i2;
            this.mMediaPresenter.play(i2);
            showMediaMessageViewDelay(250);
            return true;
        }
        if (3 != usbStatus) {
            return false;
        }
        ToastUtils.showText(this.mContext, getText(R.string.usb_no_invalid_music_warning));
        return false;
    }

    private void updateACMode(int i) {
        Log.e(TAG, "updateACMode=" + i);
        this.mFastCool.setSelected(false);
        this.mFastWarm.setSelected(false);
        if (!this.mCarPresenter.isEngineOn()) {
            this.mFastCool.setAlpha(0.3f);
            this.mFastWarm.setAlpha(0.3f);
        }
        this.mFastCool.setAlpha(1.0f);
        this.mFastWarm.setAlpha(1.0f);
        switch (i) {
            case -1:
                if (this.mCarPresenter.getACMode() == 0 && this.mCarPresenter.getAirConditionPowerState() == 0) {
                    this.mHandle.post(new Runnable() { // from class: com.yftech.yfhome.view.-$$Lambda$HomeActivity$0JraXzptYT430soB74Pt33MqqWg
                        @Override // java.lang.Runnable
                        public final void run() {
                            HomeActivity homeActivity = this.f$0;
                            ToastUtils.showText(homeActivity.mContext, homeActivity.getText(R.string.fast_cool_close).toString(), 1);
                        }
                    });
                } else if (this.mCarPresenter.getACMode() == 1 && this.mCarPresenter.getAirConditionPowerState() == 0) {
                    this.mHandle.post(new Runnable() { // from class: com.yftech.yfhome.view.-$$Lambda$HomeActivity$N926PUE2CbRZIqVYuRS-gegfRck
                        @Override // java.lang.Runnable
                        public final void run() {
                            HomeActivity homeActivity = this.f$0;
                            ToastUtils.showText(homeActivity.mContext, homeActivity.getText(R.string.fast_warm_close).toString(), 1);
                        }
                    });
                }
                this.mCarPresenter.setACMode(-1, false);
                break;
            case 0:
                this.mFastCool.setSelected(true);
                break;
            case 1:
                this.mFastWarm.setSelected(true);
                break;
        }
    }

    private void updateBTCard(int i) {
        if (2 == i) {
            this.mBtMessage.setText(R.string.bt_phone_connect);
            this.mBtConnect.setVisibility(8);
            this.mBtButtonBg.setVisibility(0);
            this.mBtKeyboard.setVisibility(0);
            this.mBtUser.setVisibility(0);
            this.mBtSearch.setVisibility(0);
            return;
        }
        this.mBtMessage.setText(R.string.bt_phone_disconnect);
        this.mBtButtonBg.setVisibility(8);
        this.mBtKeyboard.setVisibility(8);
        this.mBtUser.setVisibility(8);
        this.mBtSearch.setVisibility(8);
        this.mBtConnect.setVisibility(0);
    }

    private void updateConnectDeviceStatus() {
        boolean zIsCarplayPresent = HostConfig.isCarplayPresent();
        boolean zIsCarplayCertificate = Utils.isCarplayCertificate();
        boolean zIsEasyConnectPresent = HostConfig.isEasyConnectPresent();
        if (this.IS_DEBUG) {
            zIsCarplayPresent = true;
            zIsEasyConnectPresent = true;
        }
        Log.i(TAG, "updateConnectDeviceStatus: isCarplayPresent = " + zIsCarplayPresent + ",  isCarlifePresent = false,  isHicarPresent = false,  isCarplayCertificate = " + zIsCarplayCertificate + ",  isEasyConnectPresent = " + zIsEasyConnectPresent);
        this.mPhoneLinkHicar.setVisibility(8);
        this.mPhoneLinkCarplay.setVisibility(zIsCarplayPresent ? 0 : 8);
        this.mPhoneLinkCarlife.setVisibility(8);
        this.mPhoneLinkEasyconn.setVisibility(zIsEasyConnectPresent ? 0 : 8);
        this.mSourceSelectCarplay.setVisibility(zIsCarplayPresent ? 0 : 8);
        this.mSourceSelectCarlife.setVisibility(8);
        if (zIsCarplayPresent || zIsEasyConnectPresent) {
            return;
        }
        this.rlConnectDeviceCardRootView.setVisibility(8);
    }

    private void updateDrivingMode(ICarDrive.DriveMode driveMode) {
        boolean zIsSportPlusPresent = Utils.isSportPlusPresent();
        if (ICarDrive.DriveMode.ECO_PRO_MODE == driveMode) {
            this.ivDriveMode.setImageResource(R.mipmap.pic_drivingcard_eco);
            return;
        }
        if (ICarDrive.DriveMode.COMFORT_MODE == driveMode) {
            this.ivDriveMode.setImageResource(R.mipmap.pic_drivingcard_comfort);
            return;
        }
        if (ICarDrive.DriveMode.SPORT_MODE == driveMode) {
            this.ivDriveMode.setImageResource(R.mipmap.pic_drivingcard_sport);
        } else if (ICarDrive.DriveMode.SPORT_PLUS_MODE == driveMode && zIsSportPlusPresent) {
            this.ivDriveMode.setImageResource(R.mipmap.pic_drivingcard_sport_super);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHomeTime() {
        Object objValueOf;
        Object objValueOf2;
        String string;
        Object objValueOf3;
        Object objValueOf4;
        Object objValueOf5;
        Object objValueOf6;
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        if (DateFormat.is24HourFormat(this)) {
            StringBuilder sb = new StringBuilder();
            if (10 > i) {
                objValueOf5 = "0" + i;
            } else {
                objValueOf5 = Integer.valueOf(i);
            }
            sb.append(objValueOf5);
            sb.append(":");
            if (10 > i2) {
                objValueOf6 = "0" + i2;
            } else {
                objValueOf6 = Integer.valueOf(i2);
            }
            sb.append(objValueOf6);
            string = sb.toString();
        } else if (12 <= i) {
            if (12 != i) {
                i -= 12;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) getText(R.string.afternoon));
            sb2.append(" ");
            if (10 > i) {
                objValueOf3 = "0" + i;
            } else {
                objValueOf3 = Integer.valueOf(i);
            }
            sb2.append(objValueOf3);
            sb2.append(":");
            if (10 > i2) {
                objValueOf4 = "0" + i2;
            } else {
                objValueOf4 = Integer.valueOf(i2);
            }
            sb2.append(objValueOf4);
            string = sb2.toString();
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append((Object) getText(R.string.morning));
            sb3.append(" ");
            if (10 > i) {
                objValueOf = "0" + i;
            } else {
                objValueOf = Integer.valueOf(i);
            }
            sb3.append(objValueOf);
            sb3.append(":");
            if (10 > i2) {
                objValueOf2 = "0" + i2;
            } else {
                objValueOf2 = Integer.valueOf(i2);
            }
            sb3.append(objValueOf2);
            string = sb3.toString();
        }
        this.mHomeTime.setText(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaCard() {
        updateMediaMessage(this.mMediaPresenter.getCurrentTitle(), this.mMediaPresenter.getCurrentSinger());
        updateSource(this.mMediaPresenter.getCurrentMediaSource());
        this.mMediaProgress.setProgress(this.mMediaPresenter.getCurrentProgress());
        onChangeCycleMode(CarMusicManager.getInstance().getPlayMode());
        if (this.mMediaPresenter.isPlaying()) {
            this.mMediaPlayPause.setImageResource(R.mipmap.home_icon_pause_sel);
        } else {
            this.mMediaPlayPause.setImageResource(R.mipmap.home_icon_play_sel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaMessage(String str, String str2) {
        Log.i(TAG, "updateMediaMessage title:" + str + ", singer:" + str2);
        if (TextUtils.isEmpty(str)) {
            this.mMusicInvalid.setText(R.string.invalid_music);
            this.mMusicName.setVisibility(8);
            this.mMusicSinger.setVisibility(8);
            this.mMusicInvalid.setVisibility(0);
            return;
        }
        TextView textView = this.mMusicName;
        if (TextUtils.isEmpty(str.trim())) {
            str = getString(R.string.media_unknown);
        }
        textView.setText(str);
        TextView textView2 = this.mMusicSinger;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str2.trim())) {
            str2 = getString(R.string.media_unknown);
        }
        textView2.setText(str2);
        this.mMusicInvalid.setVisibility(8);
        this.mMusicName.setVisibility(0);
        this.mMusicSinger.setVisibility(0);
    }

    private void updatePhoneLinkCard() {
        Drawable drawable;
        boolean zIsCarplayCertificate = Utils.isCarplayCertificate();
        if (this.mMediaPresenter.isCarplayConnect()) {
            drawable = ContextCompat.getDrawable(getApplication(), zIsCarplayCertificate ? R.mipmap.home_icon_carplay_sel1_certificate : R.drawable.btn_home_device_carplay_selector);
            this.mPhoneLinkCarplay.setTextColor(-1);
        } else {
            drawable = ContextCompat.getDrawable(getApplication(), zIsCarplayCertificate ? R.mipmap.home_icon_carplay_i_certificate : R.drawable.btn_home_device_carplay_unconnect_selector);
            this.mPhoneLinkCarplay.setTextColor(1308622847);
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, 100, 100);
        }
        this.mPhoneLinkCarplay.setCompoundDrawables(null, drawable, null, null);
    }

    private void updateRadioCard() {
        int radioCurrType = this.mRadioPresenter.getRadioCurrType();
        String band = this.mRadioPresenter.getBand();
        onChangedRadioBand(radioCurrType, band, this.mRadioPresenter.getUnit());
        Log.i(TAG, "updateRadioCard: radioType = " + radioCurrType + ", band = " + band);
        this.tvDabName.setText(this.mRadioPresenter.getCurrStationName());
        this.tvDabStationLable.setText(this.mRadioPresenter.getCurrStationLable());
        if (radioCurrType == RadioPresenter.SOURCE_OF_DAB) {
            this.mRadioBandChange.setImageResource(R.mipmap.btn_adb_44px);
        } else {
            this.mRadioBandChange.setImageResource(getString(R.string.fm).equals(band) ? R.mipmap.home_btn_fm_44px : R.mipmap.home_btn_am_44px);
        }
        this.mRadioLike.setSelected(this.mRadioPresenter.isFavorite());
        boolean zIsScanStatus = this.mRadioPresenter.isScanStatus();
        this.mRadioLike.setEnabled(!zIsScanStatus);
        if (!this.mRadioPresenter.isPlaying() || zIsScanStatus) {
            this.mRadioPlayPause.setImageResource(R.drawable.btn_pause_radio_card_sel);
        } else {
            this.mRadioPlayPause.setImageResource(R.drawable.btn_play_radio_card_sel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSource(int i) {
        Log.e(TAG, "updateSource:source=" + i);
        this.mSourceSelectUSB1.setSelected(false);
        this.mSourceSelectUSB2.setSelected(false);
        this.mSourceSelectBt.setSelected(false);
        this.mSourceSelectCarplay.setSelected(false);
        this.mSourceSelectCarlife.setSelected(false);
        switch (i) {
            case 0:
                this.mSourceSelectUSB1.setSelected(true);
                this.mCurrentSource.setImageResource(R.mipmap.home_btn_usb1_44px);
                break;
            case 1:
                this.mSourceSelectUSB2.setSelected(true);
                this.mCurrentSource.setImageResource(R.mipmap.home_btn_usb2_44px);
                break;
            case 2:
                this.mSourceSelectBt.setSelected(true);
                this.mCurrentSource.setImageResource(R.mipmap.home_btn_bt_44px);
                break;
            case 3:
                this.mSourceSelectCarlife.setSelected(true);
                this.mCurrentSource.setImageResource(R.mipmap.home_btn_carlive_44px);
                break;
            case 4:
                this.mSourceSelectCarplay.setSelected(true);
                this.mCurrentSource.setImageResource(R.mipmap.home_btn_carplay_44px);
                break;
            default:
                if (this.mIsFirstRun) {
                    this.mCurrentSource.setImageResource(R.mipmap.home_btn_bt_44px);
                }
                break;
        }
        if (this.mIsFirstRun) {
            this.mIsFirstRun = false;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0079  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        if (strArr.length <= 0) {
            printWriter.println("no thing done !");
        }
        byte b = 0;
        switch (strArr[0]) {
            case "show":
                if (strArr.length <= 1) {
                    printWriter.println("no thing show !");
                    break;
                } else {
                    String str2 = strArr[1];
                    int iHashCode = str2.hashCode();
                    if (iHashCode != 3089326) {
                        if (iHashCode != 5924189 || !str2.equals("fast_cool_open")) {
                            b = -1;
                        }
                    } else if (str2.equals("door")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            ToastUtils.showText(this, getText(R.string.fast_cool_open).toString(), 1);
                            this.mSoundPool.playCoolSoundEffect();
                            printWriter.println("show StartCarPrompt!");
                            break;
                        case 1:
                            this.mCarPresenter.testDoorStatus(Integer.parseInt(strArr[2]), "0".equals(strArr[3]));
                            printWriter.println("show door!");
                            break;
                    }
                }
                break;
            case "info":
            case "help":
                printWriter.println("show ");
                printWriter.println("   fast_cool_open");
                printWriter.println(" ");
                break;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.newResources != null ? this.newResources : super.getResources();
    }

    @Override // com.yftech.yfhome.utils.HomeApplication.ConfigurationChangeLisenter
    public void onAppConfigurationChanged(Configuration configuration) {
        Log.i(TAG, "onAppConfigurationChanged: " + configuration.locale.getLanguage());
        changeLanguage(configuration);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onCarPlayUIDisplayStateChanged(boolean z) {
        if (z && this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
        }
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangeCycleMode(int i) {
        Log.e(TAG, "onChangeCycleMode:mode=" + i);
        switch (i) {
            case 0:
                this.mMediaCycle.setImageResource(R.mipmap.home_icon_cycle_sel);
                break;
            case 1:
                this.mMediaCycle.setImageResource(R.mipmap.home_icon_single_sel);
                break;
            default:
                this.mMediaCycle.setImageResource(R.mipmap.home_icon_random_sel);
                break;
        }
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangeFavoriteStatus(boolean z) {
        this.mRadioLike.setSelected(z);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangePlayError(boolean z) {
        this.mMediaPlayPause.setAlpha(!z ? 1.0f : 0.3f);
        this.mMediaPlayPause.setEnabled(!z);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangePlayStatus(boolean z) {
        if (z) {
            this.mMediaPlayPause.setImageResource(R.mipmap.home_icon_pause_sel);
        } else {
            this.mMediaPlayPause.setImageResource(R.mipmap.home_icon_play_sel);
        }
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangeRadioPlayStatus(boolean z) {
        if (!z || this.mRadioPresenter.isScanStatus()) {
            this.mRadioPlayPause.setImageResource(R.drawable.btn_pause_radio_card_sel);
        } else {
            this.mRadioPlayPause.setImageResource(R.drawable.btn_play_radio_card_sel);
        }
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangeScanStatus(boolean z) {
        this.mRadioLike.setEnabled(!z);
        this.mRadioPlayPause.setImageResource((z || !this.mRadioPresenter.isPlaying()) ? R.drawable.btn_pause_radio_card_sel : R.drawable.btn_play_radio_card_sel);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedACMode(int i) {
        updateACMode(i);
    }

    @Override // com.yftech.yfhome.presenter.BluetoothPresenter.OnChangedBluetoothListener
    public void onChangedBTConnect(int i) {
        updateBTCard(i);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedCarBodyNoLogoReset() {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarbody.setImageResource(R.mipmap.home_car_body_nologo);
        this.mCarHood.setVisibility(0);
        this.mCarHood.setImageResource(R.mipmap.home_hood_closes);
        this.car_mirror.setVisibility(0);
        this.mCarTrunk.setVisibility(8);
        this.mCarFLDoor.setVisibility(0);
        this.mCarFLDoor.setImageResource(R.mipmap.home_the_left_front_door_closes);
        this.mCarFRDoor.setVisibility(8);
        this.mCarRLDoor.setVisibility(0);
        this.mCarRLDoor.setImageResource(R.mipmap.home_the_left_rear_door_closes);
        this.mCarRRDoor.setVisibility(8);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedCarBodyPicture(int i) {
        this.mCarbody.setImageResource(i);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedCarlifeConnectStatus(int i) {
        showCarlifeButtonView();
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedCarplayConnectStatus(int i) {
        showCarplayButtonView();
        updatePhoneLinkCard();
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangedDabStationLable(String str, String str2) {
        this.tvDabStationLable.setText(str);
        this.tvDabName.setText(str2);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedDrivingMode(ICarDrive.DriveMode driveMode) {
        updateDrivingMode(driveMode);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedFrontLeftDoor(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarFLDoor.setVisibility(0);
        this.mCarFLDoor.setImageResource(z ? R.mipmap.home_the_left_front_door_opens : R.mipmap.home_the_left_front_door_closes);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedFrontRightDoor(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarFRDoor.setVisibility(z ? 0 : 8);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedHood(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarHood.setVisibility(0);
        this.mCarHood.setImageResource(z ? R.mipmap.home_hood_opens : R.mipmap.home_hood_closes);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedMediaMessage(String str, String str2) {
        Log.e(TAG, "onChangedMediaMessage:title=" + str + ", singer=" + str2 + ",isSelected:" + this.isSelected);
        if (this.isSelected) {
            showMediaMessageView(!TextUtils.isEmpty(str));
            updateMediaMessage(str, str2);
        }
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedMediaProgress(int i) {
        Log.e(TAG, "onChangedMediaProgress progress=" + i + ",isSelected:" + this.isSelected);
        if (this.isSelected) {
            this.mMediaProgress.setProgress(i);
            if (this.mMediaPriv.getVisibility() != 0 || this.mMediaProgress.getVisibility() == 0) {
                return;
            }
            this.mMediaProgress.setVisibility(0);
        }
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedMediaSource(int i) {
        Log.e(TAG, "onChangedMediaSource:source=" + i);
        this.mCurrentSelectSource = i;
        if (-1 != i) {
            this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.view.HomeActivity.12
                @Override // java.lang.Runnable
                public void run() {
                    if (HomeActivity.this.mMediaPresenter.getCurrentMediaSource() != -1) {
                        HomeActivity.this.updateMediaCard();
                        HomeActivity.this.showMediaMessageView((TextUtils.isEmpty(HomeActivity.this.mMediaPresenter.getCurrentTitle()) && TextUtils.isEmpty(HomeActivity.this.mMediaPresenter.getCurrentSinger())) ? false : true);
                    } else {
                        HomeActivity.this.updateMediaMessage(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
                        HomeActivity.this.showSourceSelectView();
                        HomeActivity.this.updateSource(-1);
                    }
                }
            }, 250L);
            return;
        }
        updateMediaMessage(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        showSourceSelectView();
        updateSource(i);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedMirror(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.car_mirror.setVisibility(0);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedPowerMode(ICarPower.PowerMode powerMode) {
        updateACMode(this.mCarPresenter.getACMode());
        updateDrivingMode(this.mCarPresenter.getDrivingMode());
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangedRadioBand(int i, String str, String str2) {
        if (i == RadioPresenter.SOURCE_OF_DAB) {
            this.mRadioMessageLayout.setVisibility(8);
            this.llDabMessageLayout.setVisibility(0);
            this.mRadioBandChange.setImageResource(R.mipmap.btn_adb_44px);
        } else {
            String rdsCommonString = this.mRadioPresenter.getRdsCommonString();
            if (this.mRdsPresent && "FM".equals(str) && !TextUtils.isEmpty(rdsCommonString)) {
                onRdsCommonStringChange(rdsCommonString);
            } else {
                this.mRadioBand.setVisibility(0);
                this.mRadioUnit.setVisibility(0);
                this.mRadioBand.setText(str);
                this.mRadioFrequency.setText(this.mRadioPresenter.getFrequency());
                this.mRadioUnit.setText(this.mRadioPresenter.getUnit());
            }
            this.llDabMessageLayout.setVisibility(8);
            this.mRadioMessageLayout.setVisibility(0);
            this.mRadioBand.setText(str);
            this.mRadioUnit.setText(str2);
            this.mRadioBandChange.setImageResource(getString(R.string.fm).equals(this.mRadioPresenter.getBand()) ? R.mipmap.home_btn_fm_44px : R.mipmap.home_btn_am_44px);
        }
        this.mRadioLike.setSelected(this.mRadioPresenter.isFavorite());
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onChangedRadioFrequency(String str) {
        this.mRadioFrequency.setText(str);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedRearLeftDoor(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarRLDoor.setVisibility(0);
        this.mCarRLDoor.setImageResource(z ? R.mipmap.home_the_left_rear_door_opens : R.mipmap.home_the_left_rear_door_closes);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedRearRightDoor(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarRRDoor.setVisibility(z ? 0 : 8);
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onChangedTrunk(boolean z) {
        if (this.isHideCarModel) {
            return;
        }
        this.mCarTrunk.setVisibility(z ? 0 : 8);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedUSBScan(int i, boolean z) {
        int musicFileExists;
        showUsbButtonView(i, this.mMediaPresenter.getUsbStatus(i));
        if (z || this.mCurrentSelectSource != -1) {
            return;
        }
        String string = SharedPrefsUtil.getInstance(getApplicationContext()).getString(SharedPrefsUtil.TAG_AUDIO_FOCUS_ON_BY_CLIENTID, BuildConfig.FLAVOR);
        if (TextUtils.isEmpty(string) || Utils.getAudioFocusByClientId(string) != 2 || this.mMediaPresenter.getBTMusicConnectStatus() == 2 || (musicFileExists = CarMediaDataManager.getInstance().getMusicFileExists()) == 0) {
            return;
        }
        this.mMediaPresenter.setCurrentMediaSource(musicFileExists == 2 ? 1 : 0);
        MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
        if (playMusic == null) {
            this.mMediaPresenter.setCurrentTitle(getString(R.string.media_unknown));
            this.mMediaPresenter.setCurrentSinger(getString(R.string.media_unknown));
        } else {
            this.mMediaPresenter.setCurrentTitle(playMusic.getTitle());
            this.mMediaPresenter.setCurrentSinger(playMusic.getArtist());
        }
        updateMediaCard();
        showMediaMessageView(true);
    }

    @Override // com.yftech.yfhome.presenter.MediaPresenter.OnChangedMediaListener
    public void onChangedUSBStatus(int i, boolean z) {
        showUsbButtonView(i, this.mMediaPresenter.getUsbStatus(i));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = false;
        switch (view.getId()) {
            case R.id.bt_connect /* 2131165251 */:
                this.mSoundPool.playInterfaceSoundEffect();
                this.mBluetoothPresenter.openBTView(3);
                boolean zIsBlueToothConnected = this.mBluetoothPresenter.isBlueToothConnected();
                Log.i(TAG, "blueToothConnected: " + zIsBlueToothConnected);
                final String string = zIsBlueToothConnected ? getString(R.string.connect_bt_use_phone2) : getString(R.string.connect_bt_use_phone);
                this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.view.-$$Lambda$HomeActivity$jyU-tbsEYBrEM8_UG8WX-tYybfI
                    @Override // java.lang.Runnable
                    public final void run() {
                        ToastUtils.showText(this.f$0, string, PathInterpolatorCompat.MAX_NUM_POINTS);
                    }
                }, 100L);
                break;
            case R.id.bt_keyboard /* 2131165252 */:
                this.mSoundPool.playInterfaceSoundEffect();
                this.mBluetoothPresenter.openBTView(0);
                break;
            case R.id.bt_search /* 2131165255 */:
                this.mSoundPool.playInterfaceSoundEffect();
                this.mBluetoothPresenter.openBTView(2);
                break;
            case R.id.bt_user /* 2131165256 */:
                this.mSoundPool.playInterfaceSoundEffect();
                this.mBluetoothPresenter.openBTView(1);
                break;
            case R.id.current_source /* 2131165278 */:
                this.isSelected = false;
                showSourceSelectView();
                if (this.mHandle.hasMessages(30)) {
                    this.mHandle.removeMessages(30);
                }
                this.mHandle.sendEmptyMessageDelayed(30, 5000L);
                Loger.i(TAG + "onClick current_source isSelected:" + this.isSelected);
                break;
            case R.id.fast_cool /* 2131165291 */:
                if (!this.mCarPresenter.isEngineOn()) {
                    ToastUtils.showText(this, getText(R.string.please_operate_after_start_vehicle), 1);
                } else {
                    startAcMode(0);
                }
                break;
            case R.id.fast_warm /* 2131165292 */:
                if (!this.mCarPresenter.isEngineOn()) {
                    ToastUtils.showText(this, getText(R.string.please_operate_after_start_vehicle), 1);
                } else {
                    startAcMode(1);
                }
                break;
            case R.id.iv_changed /* 2131165308 */:
                if (!SharedPrefsUtil.getInstance(getApplicationContext()).getBoolean(SharedPrefsUtil.TAG_IS_WALLPAPER_MODE, false)) {
                    File file = new File(WALLPAPER_PATH);
                    this.rel_car.setVisibility(4);
                    if (file.exists()) {
                        if (this.mWallPaperDrawable == null || this.mWallPaperDrawableChanger) {
                            this.mWallPaperDrawable = new BitmapDrawable(getResources(), BitmapUtils.decodeSampledBitmapFromFile(WALLPAPER_PATH, Constants.displayWidth, Constants.displayHeight));
                            this.mWallPaperDrawableChanger = false;
                        }
                        this.ivWallPaper.setImageDrawable(this.mWallPaperDrawable);
                    } else {
                        this.ivWallPaper.setImageResource(R.mipmap.def_wallpaper);
                    }
                    this.ivWallPaper.setAlpha(0.7f);
                    setCurrWallPaperMode(true);
                    this.iv_changed.setBackgroundResource(R.drawable.btn_desktop_btn_change_to_car_selector);
                } else {
                    this.rel_car.setVisibility(0);
                    setCurrWallPaperMode(false);
                    this.ivWallPaper.setImageResource(R.mipmap.desk_bg);
                    this.ivWallPaper.setAlpha(1.0f);
                    this.iv_changed.setBackgroundResource(R.drawable.btn_desktop_btn_change_to_pic_selector);
                }
                break;
            case R.id.iv_drive_mode /* 2131165309 */:
                this.mSoundPool.playInterfaceSoundEffect();
                Utils.startAppByAction(getApplicationContext(), Utils.ACTION_DRIVE_MODE_APP);
                break;
            case R.id.iv_rearView /* 2131165310 */:
                if (Utils.isCanOpenMyCar()) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    Intent intent = new Intent(Utils.MYCAR_ACTION_UI_START);
                    intent.putExtra(Utils.MYCAR_DATA_SCHEME, 8);
                    Utils.startAppByAction(getApplicationContext(), intent);
                }
                break;
            case R.id.media_cycle /* 2131165320 */:
                this.mMediaPresenter.setCycleMode();
                break;
            case R.id.media_next /* 2131165321 */:
                if (!Utils.isArLanguage()) {
                    this.mMediaPresenter.next();
                } else {
                    this.mMediaPresenter.previous();
                }
                break;
            case R.id.media_play_pause /* 2131165322 */:
                this.mMediaPresenter.playPause();
                break;
            case R.id.media_priv /* 2131165323 */:
                if (!Utils.isArLanguage()) {
                    this.mMediaPresenter.previous();
                } else {
                    this.mMediaPresenter.next();
                }
                break;
            case R.id.mode_comfortable /* 2131165327 */:
                if (!this.mCarPresenter.isEngineOn()) {
                    ToastUtils.showText(this, getText(R.string.please_operate_after_start_vehicle), 1);
                } else {
                    this.mCarPresenter.setDrivingMode(ICarDrive.DriveMode.COMFORT_MODE);
                    updateDrivingMode(ICarDrive.DriveMode.COMFORT_MODE);
                }
                break;
            case R.id.mode_economics /* 2131165328 */:
                if (!this.mCarPresenter.isEngineOn()) {
                    ToastUtils.showText(this, getText(R.string.please_operate_after_start_vehicle), 1);
                } else {
                    this.mCarPresenter.setDrivingMode(ICarDrive.DriveMode.ECO_PRO_MODE);
                    updateDrivingMode(ICarDrive.DriveMode.ECO_PRO_MODE);
                }
                break;
            case R.id.mode_sport /* 2131165329 */:
                if (!this.mCarPresenter.isEngineOn()) {
                    ToastUtils.showText(this, getText(R.string.please_operate_after_start_vehicle), 1);
                } else {
                    this.mCarPresenter.setDrivingMode(ICarDrive.DriveMode.SPORT_MODE);
                    updateDrivingMode(ICarDrive.DriveMode.SPORT_MODE);
                }
                break;
            case R.id.music_message_layout /* 2131165332 */:
                if (3 != this.mCurrentSelectSource && 4 != this.mCurrentSelectSource) {
                    this.mMediaPresenter.openMediaApp(this.mContext, MediaPresenter.getInstance(this.mContext).getCurrentMediaSource());
                } else if (4 == this.mCurrentSelectSource && this.mCarPresenter.getGear() == ICarInfo.GearPosition.REVERSE) {
                    ToastUtils.showText(this, String.format(getString(R.string.back_car_status_not_to_open_phonelink), getString(R.string.apple_carplay)), 1);
                } else {
                    CarPhoneLinkManager.getInstance().startPage(2);
                }
                this.mSoundPool.playInterfaceSoundEffect();
                break;
            case R.id.phone_link_carlife /* 2131165347 */:
                String currentPhoneLinkType = this.mMediaPresenter.getCurrentPhoneLinkType();
                if ("none".equals(currentPhoneLinkType) || Utils.CLIENT_ID_CARLIFE.equals(currentPhoneLinkType)) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    this.mMediaPresenter.openMediaApp(this.mContext, 3);
                } else {
                    AudioSettingUtil.playSystemClickSoundEffect(this);
                    this.mDialog.setContent(pickPhoneLinkTip(currentPhoneLinkType)).setOnButtonListener(new DialogUtils.OnButtonListener() { // from class: com.yftech.yfhome.view.HomeActivity.6
                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onCancel() {
                            HomeActivity.this.mDialog.dismiss();
                        }

                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onSure() {
                            HomeActivity.this.mMediaPresenter.disconnectPhoneLink(HomeActivity.this.mMediaPresenter.getCurrentPhoneLinkType());
                            HomeActivity.this.mMediaPresenter.connectPhoneLink(Utils.CLIENT_ID_CARLIFE);
                            HomeActivity.this.mDialog.dismiss();
                        }
                    }).show();
                    this.mSoundPool.playPopDlgSoundEffect();
                }
                break;
            case R.id.phone_link_carplay /* 2131165348 */:
                this.mSoundPool.playInterfaceSoundEffect();
                if (this.mCarPresenter.getGear() == ICarInfo.GearPosition.REVERSE) {
                    ToastUtils.showText(this, String.format(getString(R.string.back_car_status_not_to_open_phonelink), getString(R.string.apple_carplay)), 1);
                } else if (!this.mMediaPresenter.isCarplayConnect()) {
                    Utils.startAppByAction(this.mContext, Utils.ACTION_CARPLAY_SETTING_START);
                } else {
                    this.mMediaPresenter.openMediaApp(this.mContext, 4);
                }
                break;
            case R.id.phone_link_easyconn /* 2131165349 */:
                final String currentPhoneLinkType2 = this.mMediaPresenter.getCurrentPhoneLinkType();
                if ("none".equals(currentPhoneLinkType2) || "easyconn".equals(currentPhoneLinkType2)) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    this.mMediaPresenter.openMediaApp(this.mContext, 8);
                } else {
                    AudioSettingUtil.playSystemClickSoundEffect(this);
                    this.mDialog.setContent(pickPhoneLinkTip(currentPhoneLinkType2)).setOnButtonListener(new DialogUtils.OnButtonListener() { // from class: com.yftech.yfhome.view.HomeActivity.7
                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onCancel() {
                            HomeActivity.this.mDialog.dismiss();
                        }

                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onSure() {
                            HomeActivity.this.mMediaPresenter.disconnectPhoneLink(currentPhoneLinkType2);
                            HomeActivity.this.mMediaPresenter.openMediaApp(HomeActivity.this.mContext, 8);
                            HomeActivity.this.mDialog.dismiss();
                        }
                    }).show();
                    this.mSoundPool.playPopDlgSoundEffect();
                }
                break;
            case R.id.phone_link_hicar /* 2131165350 */:
                String currentPhoneLinkType3 = this.mMediaPresenter.getCurrentPhoneLinkType();
                if (this.mMediaPresenter.isHiCarReConnected()) {
                    AudioSettingUtil.playSystemClickSoundEffect(this);
                    ToastUtils.showText(this, getText(R.string.connecting_hicar_wait), 1);
                } else if ("none".equals(currentPhoneLinkType3) || Utils.CLIENT_ID_HICAR.equals(currentPhoneLinkType3)) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    this.mMediaPresenter.openMediaApp(this.mContext, 5);
                } else {
                    AudioSettingUtil.playSystemClickSoundEffect(this);
                    this.mDialog.setContent(pickPhoneLinkTip(currentPhoneLinkType3)).setOnButtonListener(new DialogUtils.OnButtonListener() { // from class: com.yftech.yfhome.view.HomeActivity.8
                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onCancel() {
                            HomeActivity.this.mDialog.dismiss();
                        }

                        @Override // com.yftech.yfhome.utils.DialogUtils.OnButtonListener
                        public void onSure() {
                            HomeActivity.this.mMediaPresenter.disconnectPhoneLink(HomeActivity.this.mMediaPresenter.getCurrentPhoneLinkType());
                            HomeActivity.this.mMediaPresenter.connectPhoneLink(Utils.CLIENT_ID_HICAR);
                            HomeActivity.this.mDialog.dismiss();
                        }
                    }).show();
                    this.mSoundPool.playPopDlgSoundEffect();
                }
                break;
            case R.id.radio_band_change /* 2131165355 */:
                this.mRadioPresenter.switchBand();
                break;
            case R.id.radio_dab_message_layout /* 2131165356 */:
            case R.id.radio_message_layout /* 2131165361 */:
                this.mRadioPresenter.openRadioApp(this.mContext);
                this.mSoundPool.playInterfaceSoundEffect();
                break;
            case R.id.radio_like /* 2131165360 */:
                this.mRadioPresenter.switchFavorite();
                break;
            case R.id.radio_next /* 2131165362 */:
                if (!Utils.isArLanguage()) {
                    this.mRadioPresenter.next();
                } else {
                    this.mRadioPresenter.previous();
                }
                break;
            case R.id.radio_play_pause /* 2131165363 */:
                this.mRadioPresenter.playPause();
                break;
            case R.id.radio_priv /* 2131165364 */:
                if (!Utils.isArLanguage()) {
                    this.mRadioPresenter.previous();
                } else {
                    this.mRadioPresenter.next();
                }
                break;
            case R.id.rl_bt_carview /* 2131165371 */:
                if (this.mBluetoothPresenter.getBTPhoneConnectStatus() == 2) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    this.mBluetoothPresenter.openBTView(4);
                }
                break;
            case R.id.source_select_bt /* 2131165394 */:
                if (2 != this.mMediaPresenter.getBTMusicConnectStatus()) {
                    this.mSoundPool.playInterfaceSoundEffect();
                    this.mBluetoothPresenter.openBTView(3);
                    boolean zIsBlueToothConnected2 = this.mBluetoothPresenter.isBlueToothConnected();
                    Log.i(TAG, "blueToothConnected: " + zIsBlueToothConnected2);
                    final String string2 = zIsBlueToothConnected2 ? getString(R.string.connect_bt_use_music2) : getString(R.string.connect_bt_use_music);
                    this.mHandle.postDelayed(new Runnable() { // from class: com.yftech.yfhome.view.-$$Lambda$HomeActivity$LdcDGbyp1jGvfLlS-dbFZ_XCYAI
                        @Override // java.lang.Runnable
                        public final void run() {
                            ToastUtils.showText(this.f$0, string2, PathInterpolatorCompat.MAX_NUM_POINTS);
                        }
                    }, 100L);
                } else {
                    this.mCurrentSelectSource = 2;
                    this.mMediaPresenter.play(2);
                    this.isSelected = true;
                    Loger.i(TAG + "onClick source_select_bt isSelected:" + this.isSelected);
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                }
                break;
            case R.id.source_select_carlife /* 2131165395 */:
                if (!this.mMediaPresenter.isCarlifeConnect()) {
                    ToastUtils.showText(this.mContext, getText(R.string.no_carlife_device));
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                    this.mHandle.sendEmptyMessageDelayed(30, 5000L);
                } else {
                    this.mCurrentSelectSource = 3;
                    this.mMediaPresenter.play(3);
                    this.isSelected = true;
                    Loger.i(TAG + "onClick source_select_carlife isSelected:" + this.isSelected);
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                }
                break;
            case R.id.source_select_carplay /* 2131165396 */:
                if (!this.mMediaPresenter.isCarplayConnect()) {
                    if (!Utils.isCarplayCertificate()) {
                        ToastUtils.showText(this.mContext, getText(R.string.no_carplay_device));
                    }
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                    this.mHandle.sendEmptyMessageDelayed(30, 5000L);
                } else {
                    this.mCurrentSelectSource = 4;
                    this.mMediaPresenter.play(4);
                    this.isSelected = true;
                    Loger.i(TAG + "onClick source_select_carplay isSelected:" + this.isSelected);
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                }
                break;
            case R.id.source_select_close /* 2131165397 */:
                updateMediaCard();
                if (this.mMediaPresenter.getCurrentMediaSource() != -1 && (!TextUtils.isEmpty(this.mMediaPresenter.getCurrentTitle()) || !TextUtils.isEmpty(this.mMediaPresenter.getCurrentSinger()))) {
                    z = true;
                }
                showMediaMessageView(z);
                this.isSelected = true;
                if (this.mHandle.hasMessages(30)) {
                    this.mHandle.removeMessages(30);
                }
                Loger.i(TAG + "onClick source_select_close isSelected:" + this.isSelected);
                break;
            case R.id.source_select_usb1 /* 2131165399 */:
                this.mMediaPresenter.isMusicSourceChangedByUser = true;
                this.mMediaProgress.setProgress(0);
                if (!startUsbSource(0, 0)) {
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                    this.mHandle.sendEmptyMessageDelayed(30, 5000L);
                } else {
                    this.isSelected = true;
                    Loger.i(TAG + "onClick source_select_usb1 isSelected:" + this.isSelected);
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                }
                break;
            case R.id.source_select_usb2 /* 2131165401 */:
                this.mMediaPresenter.isMusicSourceChangedByUser = true;
                this.mMediaProgress.setProgress(0);
                if (!startUsbSource(1, 1)) {
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                    this.mHandle.sendEmptyMessageDelayed(30, 5000L);
                } else {
                    this.isSelected = true;
                    Loger.i(TAG + "onClick source_select_usb2 isSelected:" + this.isSelected);
                    if (this.mHandle.hasMessages(30)) {
                        this.mHandle.removeMessages(30);
                    }
                }
                break;
            case R.id.tv_trunk_status /* 2131165444 */:
                sendTrunkCmd();
                break;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = this;
        setContentView(R.layout.activity_main);
        if (Constants.displayHeight == 0 || Constants.displayWidth == 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            Constants.displayWidth = displayMetrics.widthPixels;
            Constants.displayHeight = displayMetrics.heightPixels;
        }
        Utils.setImmersiveViewStatusBar(this);
        initView();
        initPresenter();
        initReceiver();
        registerTestReceiver();
        showSourceSelectView();
        this.mAudioManager = (AudioManager) getSystemService("audio");
        this.mDialog = new DialogUtils(this);
        this.mSoundPool = new MySoundPool(this);
        if (new File(WallpaperUtils.getWallPaperOutputPath()).exists()) {
            Log.e(TAG, "onCreate: def wallpaper is not null");
        } else {
            new Thread(new Runnable() { // from class: com.yftech.yfhome.view.-$$Lambda$HomeActivity$9X98F0FmKcDYA1ov31P86x7cttU
                @Override // java.lang.Runnable
                public final void run() {
                    HomeActivity.lambda$onCreate$0(this.f$0);
                }
            }).start();
        }
        this.mHandle.sendEmptyMessageDelayed(40, 1500L);
        setCurrWallPaperMode(SharedPrefsUtil.getInstance(getApplicationContext()).getBoolean(SharedPrefsUtil.TAG_IS_WALLPAPER_MODE, false));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.mReceiver);
        if (HomeApplication.getInstance() != null) {
            HomeApplication.getInstance().unRegisterConfigurationChangeLisenter(this);
        }
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onGearPositionChanged(final ICarInfo.GearPosition gearPosition) {
        if (this.isPlgmfunccfgPresent) {
            runOnUiThread(new Runnable() { // from class: com.yftech.yfhome.view.HomeActivity.10
                @Override // java.lang.Runnable
                public void run() {
                    if (gearPosition == ICarInfo.GearPosition.PARKING || gearPosition == ICarInfo.GearPosition.NEUTRAL || gearPosition == ICarInfo.GearPosition.__UNKNOWN__) {
                        HomeActivity.this.tvTrunkStatus.setVisibility(0);
                    } else {
                        HomeActivity.this.tvTrunkStatus.setVisibility(4);
                    }
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mDialog == null || !this.mDialog.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onRdsCommonStringChange(String str) {
        this.mRadioBand.setVisibility(8);
        this.mRadioUnit.setVisibility(8);
        this.mRadioFrequency.setText(str);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.i(TAG, "onResume: start time: " + SystemClock.currentThreadTimeMillis());
        this.isHideCarModel = Utils.isHideCar(this);
        this.isGacLogoPresent = Utils.isGACLogoPresent();
        this.mCarbody.setVisibility(this.isHideCarModel ? 8 : 0);
        onGearPositionChanged(this.mCarPresenter.getGear());
        boolean z = SharedPrefsUtil.getInstance(getApplicationContext()).getBoolean(SharedPrefsUtil.TAG_IS_WALLPAPER_MODE, false);
        this.iv_changed.setBackgroundResource(z ? R.drawable.btn_desktop_btn_change_to_car_selector : R.drawable.btn_desktop_btn_change_to_pic_selector);
        if (z) {
            if (new File(WALLPAPER_PATH).exists()) {
                this.rel_car.setVisibility(4);
                if (this.mWallPaperDrawable == null || this.mWallPaperDrawableChanger) {
                    this.mWallPaperDrawable = new BitmapDrawable(getResources(), BitmapUtils.decodeSampledBitmapFromFile(WALLPAPER_PATH, Constants.displayWidth, Constants.displayHeight));
                    this.mWallPaperDrawableChanger = false;
                }
                this.ivWallPaper.setImageDrawable(this.mWallPaperDrawable);
            } else {
                this.ivWallPaper.setImageResource(R.mipmap.def_wallpaper);
            }
            this.ivWallPaper.setAlpha(0.7f);
        } else {
            this.ivWallPaper.setAlpha(1.0f);
        }
        initCard();
        initCarView();
        Log.i(TAG, "onResume: then time: " + SystemClock.currentThreadTimeMillis());
        ICarDoor.TailDoorState tailDoorState = CarDoorManager.get().getTailDoorState();
        Log.i(TAG, "onResume: curr doorState = " + tailDoorState + " , isPlgmfunccfgPresent = " + this.isPlgmfunccfgPresent);
        if (this.isPlgmfunccfgPresent) {
            onTailDoorStateChanged(tailDoorState);
        }
        Log.i(TAG, "onResume: end time: " + SystemClock.currentThreadTimeMillis());
    }

    @Override // com.yftech.yfhome.presenter.RadioPresenter.OnChangedRadioListener
    public void onSignalStatusChanged(boolean z) {
        this.mRadioLike.setHovered(z);
        this.mRadioPriv.setHovered(z);
        this.mRadioNext.setHovered(z);
        this.mRadioPlayPause.setHovered(z);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // com.yftech.yfhome.presenter.CarPresenter.OnChangedCarListener
    public void onTailDoorStateChanged(ICarDoor.TailDoorState tailDoorState) {
        Log.i(TAG, "onTailDoorStateChanged: state = " + tailDoorState);
        switch (AnonymousClass14.$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState[tailDoorState.ordinal()]) {
            case 1:
                this.tvTrunkStatus.setText(R.string.close_back_door);
                this.tvTrunkStatus.setAlpha(1.0f);
                setTvTrunkDrawable(R.mipmap.ic_back_door_to_close);
                break;
            case 2:
            case 3:
            case 4:
                this.tvTrunkStatus.setAlpha(0.8f);
                this.tvTrunkStatus.setText(getString(R.string.stop_back_door));
                break;
            case 5:
                int tailDoorTravelPercent = CarDoorManager.get().getTailDoorTravelPercent();
                this.tvTrunkStatus.setAlpha(tailDoorTravelPercent > 0 && tailDoorTravelPercent < 20 ? 0.3f : 1.0f);
                this.tvTrunkStatus.setText(R.string.close_back_door);
                break;
            case 6:
                this.tvTrunkStatus.setText(getString(R.string.open_back_door));
                this.tvTrunkStatus.setAlpha(1.0f);
                setTvTrunkDrawable(R.mipmap.ic_back_door_to_open);
                break;
        }
    }
}
