.class public Lcom/yftech/yfhome/view/HomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;
.implements Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;
.implements Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;
.implements Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;
.implements Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;


# static fields
.field public static final ACTION_WALLPAPER_MODE_CHANGE:Ljava/lang/String; = "com.yftech.yfhome.wallpaper_mode_change"

.field public static final SYS_IS_WALLPAPER_MODE:Ljava/lang/String; = "sys.is.wallpager.mode"

.field private static final TAG:Ljava/lang/String; = "HomeActivity"

.field public static final WALLPAPER_PATH:Ljava/lang/String;


# instance fields
.field private final ADD_CHAR:Ljava/lang/String;

.field private final HOUR_10:I

.field private final HOUR_12:I

.field public IS_DEBUG:Z

.field private final LIMIT_CLICK_AREA:I

.field private final RC_PLAY:I

.field private final RC_SOURCE_SELECT:I

.field private final TIME_SEPARATOR:Ljava/lang/String;

.field private final UPDATE_DELAY_TIME:I

.field private car_mirror:Landroid/widget/ImageView;

.field private endX:I

.field private endY:I

.field private isClickOnCar:Z

.field private isGacLogoPresent:Z

.field public isHideCarModel:Z

.field private isPlgmfunccfgPresent:Z

.field private isSelected:Z

.field private ivDriveMode:Landroid/widget/ImageView;

.field private ivWallPaper:Landroid/widget/ImageView;

.field private iv_changed:Landroid/widget/ImageView;

.field private lastTouchTime:J

.field private lastX:F

.field private lastY:F

.field private llDabMessageLayout:Landroid/widget/LinearLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

.field private mBtButtonBg:Landroid/view/View;

.field private mBtConnect:Lcom/yftech/yfhome/utils/DrawableTextView;

.field private mBtKeyboard:Landroid/widget/ImageView;

.field private mBtMain:Landroid/widget/ImageView;

.field private mBtMessage:Landroid/widget/TextView;

.field private mBtSearch:Landroid/widget/ImageView;

.field private mBtUser:Landroid/widget/ImageView;

.field private mCarFLDoor:Landroid/widget/ImageView;

.field private mCarFRDoor:Landroid/widget/ImageView;

.field private mCarHood:Landroid/widget/ImageView;

.field private mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

.field private mCarRLDoor:Landroid/widget/ImageView;

.field private mCarRRDoor:Landroid/widget/ImageView;

.field private mCarTrunk:Landroid/widget/ImageView;

.field private mCarbody:Landroid/widget/ImageView;

.field private mCarplayCycle:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectSource:I

.field private mCurrentSource:Landroid/widget/ImageView;

.field private mCurrentSourceClick:I

.field private mCurrentXPoint:F

.field private mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

.field private mDrivingModeLayout:Landroid/view/View;

.field private mFastCool:Landroid/widget/TextView;

.field private mFastWarm:Landroid/widget/TextView;

.field private mHandle:Landroid/os/Handler;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIsFirstRun:Z

.field private mMainLayout:Landroid/view/View;

.field private mMediaContrlBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mMediaCycle:Landroid/widget/ImageView;

.field private mMediaNext:Landroid/widget/ImageView;

.field private mMediaPlayPause:Landroid/widget/ImageView;

.field private mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

.field private mMediaPriv:Landroid/widget/ImageView;

.field private mMediaProgress:Landroid/widget/ProgressBar;

.field private mModeComfortable:Landroid/widget/TextView;

.field private mModeEconomics:Landroid/widget/TextView;

.field private mModeSport:Landroid/widget/TextView;

.field private mMusicInvalid:Landroid/widget/TextView;

.field private mMusicMessageLayout:Landroid/view/View;

.field private mMusicName:Landroid/widget/TextView;

.field private mMusicSinger:Landroid/widget/TextView;

.field private mOnCarTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

.field private mPhoneLinkCarlife:Landroid/widget/TextView;

.field private mPhoneLinkCarplay:Landroid/widget/TextView;

.field private mPhoneLinkEasyconn:Landroid/widget/TextView;

.field private mPhoneLinkHicar:Landroid/widget/TextView;

.field private mRadioBand:Landroid/widget/TextView;

.field private mRadioBandChange:Landroid/widget/ImageView;

.field private mRadioFrequency:Landroid/widget/TextView;

.field private mRadioLike:Landroid/widget/ImageView;

.field private mRadioMessageLayout:Landroid/view/View;

.field private mRadioNext:Landroid/widget/ImageView;

.field private mRadioPlayPause:Landroid/widget/ImageView;

.field private mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

.field private mRadioPriv:Landroid/widget/ImageView;

.field private mRadioUnit:Landroid/widget/TextView;

.field private mRdsPresent:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

.field private mSourceSelect:Landroid/widget/TextView;

.field private mSourceSelectBt:Landroid/widget/TextView;

.field private mSourceSelectCarlife:Landroid/widget/TextView;

.field private mSourceSelectCarplay:Landroid/widget/TextView;

.field private mSourceSelectClose:Landroid/widget/ImageView;

.field private mSourceSelectUSB1:Landroid/widget/TextView;

.field private mSourceSelectUSB1Loading:Landroid/widget/ProgressBar;

.field private mSourceSelectUSB2:Landroid/widget/TextView;

.field private mSourceSelectUSB2Loading:Landroid/widget/ProgressBar;

.field private mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mWallPaperDrawableChanger:Z

.field private newResources:Landroid/content/res/Resources;

.field private rel_car:Landroid/widget/RelativeLayout;

.field private rlBtCardView:Landroid/widget/RelativeLayout;

.field private rlConnectDeviceCardRootView:Landroid/widget/RelativeLayout;

.field private startX:I

.field private startY:I

.field private tvDabName:Landroid/widget/TextView;

.field private tvDabStationLable:Landroid/widget/TextView;

.field private tvTrunkStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/wallpaper/Wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/yfhome/view/HomeActivity;->WALLPAPER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0xa

    .line 130
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->HOUR_10:I

    const/16 v0, 0xc

    .line 131
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->HOUR_12:I

    const-string v0, "0"

    .line 132
    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ADD_CHAR:Ljava/lang/String;

    const-string v0, ":"

    .line 133
    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->TIME_SEPARATOR:Ljava/lang/String;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSourceClick:I

    const/16 v1, 0x32

    .line 136
    iput v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->LIMIT_CLICK_AREA:I

    .line 138
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mIsFirstRun:Z

    const/16 v1, 0xfa

    .line 141
    iput v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->UPDATE_DELAY_TIME:I

    .line 145
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    const/16 v0, 0x1e

    .line 146
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->RC_SOURCE_SELECT:I

    const/16 v0, 0x28

    .line 147
    iput v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->RC_PLAY:I

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    .line 158
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    .line 167
    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/yfhome/view/HomeActivity$1;-><init>(Lcom/yftech/yfhome/view/HomeActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    .line 227
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->IS_DEBUG:Z

    .line 572
    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/view/HomeActivity$2;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 592
    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/view/HomeActivity$3;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    .line 710
    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isClickOnCar:Z

    .line 714
    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$4;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnCarTouchListener:Landroid/view/View$OnTouchListener;

    .line 778
    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$5;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaContrlBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2269
    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$13;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$13;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/view/HomeActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/yfhome/view/HomeActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->startX:I

    return p0
.end method

.method static synthetic access$1402(Lcom/yftech/yfhome/view/HomeActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->startX:I

    return p1
.end method

.method static synthetic access$1500(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->startY:I

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/yfhome/view/HomeActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->startY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->endX:I

    return p0
.end method

.method static synthetic access$1602(Lcom/yftech/yfhome/view/HomeActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->endX:I

    return p1
.end method

.method static synthetic access$1700(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->endY:I

    return p0
.end method

.method static synthetic access$1702(Lcom/yftech/yfhome/view/HomeActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->endY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/yftech/yfhome/view/HomeActivity;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->startSource(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yftech/yfhome/view/HomeActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isClickOnCar:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/yftech/yfhome/view/HomeActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isClickOnCar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/yfhome/view/HomeActivity;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/yftech/yfhome/view/HomeActivity;J)J
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastTouchTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/yftech/yfhome/view/HomeActivity;)F
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastX:F

    return p0
.end method

.method static synthetic access$2102(Lcom/yftech/yfhome/view/HomeActivity;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/yftech/yfhome/view/HomeActivity;)F
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastY:F

    return p0
.end method

.method static synthetic access$2202(Lcom/yftech/yfhome/view/HomeActivity;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->lastY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/CarPresenter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/yfhome/view/HomeActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isGacLogoPresent:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/MySoundPool;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->car_mirror:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarTrunk:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    return p0
.end method

.method static synthetic access$3000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFRDoor:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRRDoor:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/yftech/yfhome/view/HomeActivity;)F
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentXPoint:F

    return p0
.end method

.method static synthetic access$3402(Lcom/yftech/yfhome/view/HomeActivity;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentXPoint:F

    return p1
.end method

.method static synthetic access$3500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/media/AudioManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/RadioPresenter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showSourceSelectView()V

    return-void
.end method

.method static synthetic access$4400(Lcom/yftech/yfhome/view/HomeActivity;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateSource(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$4602(Lcom/yftech/yfhome/view/HomeActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/yftech/yfhome/view/HomeActivity;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->setCurrWallPaperMode(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->rel_car:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaCard()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/yfhome/view/HomeActivity;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->resetSourceSelectPressedStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/yfhome/view/HomeActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSourceClick:I

    return p0
.end method

.method static synthetic access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSourceClick:I

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    return-object p0
.end method

.method private changeLanguage(Landroid/content/res/Configuration;)V
    .locals 2

    .line 2360
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->newResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->newResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 2362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->newResources:Landroid/content/res/Resources;

    :cond_1
    return-void
.end method

.method private createDefWallpaper()V
    .locals 5

    .line 2325
    :try_start_0
    invoke-static {}, Lcom/yftech/yfhome/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v0

    .line 2326
    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy outPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/yftech/yfhome/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2329
    sget-object v2, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createNewFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2333
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2334
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0007

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2336
    sget-object p0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "def wallpaper is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2339
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2341
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wallpaper_original_path"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2342
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wallpaper_md5"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yftech/yfhome/utils/WallpaperUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2344
    :cond_2
    sget-object p0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "createDefWallpaper: fail !!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2348
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initCarView()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getDrivingMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 364
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->updateACMode(I)V

    .line 365
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 366
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->hasCarDoorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isHoodOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedHood(Z)V

    .line 369
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isTrunkOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedTrunk(Z)V

    .line 370
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isFrontLeftDoorOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedFrontLeftDoor(Z)V

    .line 371
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isFrontRightDoorOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedFrontRightDoor(Z)V

    .line 372
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isRearLeftDoorOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedRearLeftDoor(Z)V

    .line 373
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isRearRightDoorOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedRearRightDoor(Z)V

    goto :goto_0

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isGacLogoPresent:Z

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedCarBodyNoLogoReset()V

    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->car_mirror:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarTrunk:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFRDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRRDoor:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initCard()V
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updatePhoneLinkCard()V

    .line 350
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaCard()V

    .line 351
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateRadioCard()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->getBTPhoneConnectStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->updateBTCard(I)V

    .line 355
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateConnectDeviceStatus()V

    return-void
.end method

.method private initPresenter()V
    .locals 1

    .line 397
    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/CarPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 398
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setOnChangedCarListener(Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;)V

    .line 399
    invoke-static {p0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    .line 400
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->setOnChangedBluetoothListener(Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;)V

    .line 401
    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/RadioPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    .line 402
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->setOnChangedRadioListener(Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;)V

    .line 403
    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 404
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setOnChangedMediaListener(Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;)V

    .line 405
    invoke-static {}, Lcom/yftech/yfhome/utils/HomeApplication;->getInstance()Lcom/yftech/yfhome/utils/HomeApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/yftech/yfhome/utils/HomeApplication;->getInstance()Lcom/yftech/yfhome/utils/HomeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/utils/HomeApplication;->registerConfigurationChangeLisenter(Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;)V

    :cond_0
    return-void
.end method

.method private initReceiver()V
    .locals 2

    .line 2260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 2261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 2263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yftech.multimedia.action.wallpaper.setting"

    .line 2264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2265
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/yfhome/view/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2266
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateHomeTime()V

    return-void
.end method

.method private initView()V
    .locals 9

    const v0, 0x7f0700db

    .line 414
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 415
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0028

    const/4 v2, 0x0

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v2, Lcom/yftech/yfhome/view/SourcePagerAdapter;

    invoke-direct {v2, v1}, Lcom/yftech/yfhome/view/SourcePagerAdapter;-><init>(Ljava/util/List;)V

    .line 420
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f070087

    .line 421
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMainLayout:Landroid/view/View;

    const v1, 0x7f07007f

    .line 422
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v1, 0x7f070094

    .line 423
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicMessageLayout:Landroid/view/View;

    const v1, 0x7f0700b1

    .line 424
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioMessageLayout:Landroid/view/View;

    const v1, 0x7f07004d

    .line 426
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    const v1, 0x7f070054

    .line 427
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarTrunk:Landroid/widget/ImageView;

    const v1, 0x7f070053

    .line 428
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRRDoor:Landroid/widget/ImageView;

    const v1, 0x7f07004f

    .line 429
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFRDoor:Landroid/widget/ImageView;

    const v1, 0x7f070052

    .line 430
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    const v1, 0x7f07004e

    .line 431
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    const v1, 0x7f070050

    .line 432
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    const v1, 0x7f070051

    .line 433
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->car_mirror:Landroid/widget/ImageView;

    const v1, 0x7f07005e

    .line 434
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const v1, 0x7f0700d5

    .line 435
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectClose:Landroid/widget/ImageView;

    const v1, 0x7f070088

    .line 436
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    const v1, 0x7f070055

    .line 437
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarplayCycle:Landroid/widget/ImageView;

    const v1, 0x7f07008b

    .line 438
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    const v1, 0x7f07008a

    .line 439
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f070089

    .line 440
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    const v1, 0x7f0700d8

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1Loading:Landroid/widget/ProgressBar;

    const v1, 0x7f0700da

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2Loading:Landroid/widget/ProgressBar;

    const v1, 0x7f0700b4

    .line 443
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPriv:Landroid/widget/ImageView;

    const v1, 0x7f0700b3

    .line 444
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0700b2

    .line 445
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioNext:Landroid/widget/ImageView;

    const v1, 0x7f0700b0

    .line 446
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    const v1, 0x7f0700ab

    .line 447
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    const v1, 0x7f070042

    .line 448
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtButtonBg:Landroid/view/View;

    const v1, 0x7f070045

    .line 449
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtMain:Landroid/widget/ImageView;

    const v1, 0x7f0700bb

    .line 450
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->rlBtCardView:Landroid/widget/RelativeLayout;

    const v1, 0x7f070044

    .line 451
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtKeyboard:Landroid/widget/ImageView;

    const v1, 0x7f070048

    .line 452
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtUser:Landroid/widget/ImageView;

    const v1, 0x7f070047

    .line 453
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtSearch:Landroid/widget/ImageView;

    const v1, 0x7f070095

    .line 454
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicName:Landroid/widget/TextView;

    const v1, 0x7f070096

    .line 455
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicSinger:Landroid/widget/TextView;

    const v1, 0x7f070093

    .line 456
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicInvalid:Landroid/widget/TextView;

    const v1, 0x7f0700d1

    .line 457
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelect:Landroid/widget/TextView;

    const v1, 0x7f0700d2

    .line 458
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    const v1, 0x7f0700d7

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    const v1, 0x7f0700d9

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    const v1, 0x7f0700d4

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    const v1, 0x7f0700d3

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    const v0, 0x7f0700aa

    .line 463
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBand:Landroid/widget/TextView;

    const v0, 0x7f0700af

    .line 464
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioFrequency:Landroid/widget/TextView;

    const v0, 0x7f0700b6

    .line 465
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioUnit:Landroid/widget/TextView;

    const v0, 0x7f070046

    .line 466
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtMessage:Landroid/widget/TextView;

    const v0, 0x7f070043

    .line 467
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/yfhome/utils/DrawableTextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtConnect:Lcom/yftech/yfhome/utils/DrawableTextView;

    const v0, 0x7f070073

    .line 468
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHomeTime:Landroid/widget/TextView;

    const v0, 0x7f07006b

    .line 469
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    const v0, 0x7f07006c

    .line 470
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    const v0, 0x7f07007c

    .line 471
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->iv_changed:Landroid/widget/ImageView;

    const v1, 0x7f0700b7

    .line 472
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->rel_car:Landroid/widget/RelativeLayout;

    const v1, 0x7f070080

    .line 473
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDrivingModeLayout:Landroid/view/View;

    const v1, 0x7f070091

    .line 474
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeSport:Landroid/widget/TextView;

    const v1, 0x7f07008f

    .line 475
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeComfortable:Landroid/widget/TextView;

    const v1, 0x7f070090

    .line 476
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeEconomics:Landroid/widget/TextView;

    const v1, 0x7f07008c

    .line 477
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f0700a6

    .line 478
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkHicar:Landroid/widget/TextView;

    const v1, 0x7f0700a4

    .line 479
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    const v1, 0x7f0700a3

    .line 480
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarlife:Landroid/widget/TextView;

    .line 481
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0700a5

    .line 482
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkEasyconn:Landroid/widget/TextView;

    .line 483
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkEasyconn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700bc

    .line 484
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->rlConnectDeviceCardRootView:Landroid/widget/RelativeLayout;

    .line 485
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicMessageLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioMessageLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarplayCycle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaContrlBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaContrlBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaContrlBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPriv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioNext:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtMain:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->rlBtCardView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtUser:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtSearch:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 511
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnSourcePagerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 512
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtConnect:Lcom/yftech/yfhome/utils/DrawableTextView;

    invoke-virtual {v1, p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnCarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 515
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->iv_changed:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeEconomics:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeComfortable:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mModeSport:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkHicar:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarlife:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700ac

    .line 525
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->llDabMessageLayout:Landroid/widget/LinearLayout;

    .line 526
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->llDabMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700ae

    .line 527
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabStationLable:Landroid/widget/TextView;

    const v1, 0x7f0700ad

    .line 528
    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabName:Landroid/widget/TextView;

    .line 531
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isWallpaperPresent()Z

    move-result v1

    .line 532
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRearviewMirrorAdjustmentPresent()Z

    move-result v2

    .line 533
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isEasyConnectPresent()Z

    move-result v3

    .line 534
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioPresent()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioDABPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 535
    :goto_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isPlgmfunccfgPresent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    .line 536
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioRdsPresent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRdsPresent:Z

    .line 537
    iget-boolean v7, p0, Lcom/yftech/yfhome/view/HomeActivity;->IS_DEBUG:Z

    if-eqz v7, :cond_2

    .line 541
    iput-boolean v6, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    move v1, v6

    move v2, v1

    move v3, v2

    move v4, v3

    .line 544
    :cond_2
    sget-object v6, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initView: isWallpaperPresent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  isRearviewMirrorAdjustmentPresent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  isEasyConnectPresent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isRadioPresent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v6, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkEasyconn:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v7

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 549
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x4

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v3

    .line 550
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f07007e

    .line 552
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    move v1, v3

    .line 555
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f070104

    .line 557
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    .line 558
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    if-eqz v1, :cond_6

    move v3, v5

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f07007d

    .line 561
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    .line 562
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700b5

    .line 564
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v5, v7

    .line 565
    :goto_5
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onClick$1(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 945
    invoke-static {p0, p1, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic lambda$onClick$2(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 1082
    invoke-static {p0, p1, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 263
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 264
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->createDefWallpaper()V

    return-void
.end method

.method public static synthetic lambda$updateACMode$3(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 2

    .line 1821
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0034

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic lambda$updateACMode$4(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0037

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private pickPhoneLinkTip(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ""

    const/4 v1, -0x1

    .line 1246
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2dd7bdd2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x5eac733

    if-eq v2, v3, :cond_3

    const v3, 0x210824d0

    if-eq v2, v3, :cond_2

    const v3, 0x210a0108

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "carplay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "carlife"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "hicar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v5

    goto :goto_0

    :cond_4
    const-string v2, "easyconn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0d0031

    .line 1257
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const p1, 0x7f0d001e

    .line 1254
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const p1, 0x7f0d0043

    .line 1251
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const p1, 0x7f0d0021

    .line 1248
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const p1, 0x7f0d0027

    .line 1260
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerTestReceiver()V
    .locals 3

    .line 342
    new-instance v0, Lcom/yftech/yfhome/view/TestReceiver;

    invoke-direct {v0}, Lcom/yftech/yfhome/view/TestReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "launchtest"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetSourceSelectPressedStatus()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 701
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 702
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 703
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 704
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    return-void
.end method

.method private sendTrunkCmd()V
    .locals 5

    .line 1266
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object v0

    .line 1267
    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTrunkCmd: curr doorState  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity$14;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState:[I

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1306
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {v0, v2}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    .line 1307
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorPercent()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const v0, 0x7f0d004f

    .line 1309
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1278
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorTravelPercent()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1280
    :goto_0
    sget-object v2, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTrunkCmd: then is HOLD !! \u5f53\u524d\u5f00\u542f\u767e\u5206\u6bd4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",   unClose = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    const v1, 0x7f0d0020

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {p0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d003b

    .line 1284
    invoke-virtual {p0, v3}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0044

    invoke-virtual {p0, v4}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1283
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yftech/yfhome/utils/DialogUtils;->setTitleAndContentAndBtnStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$9;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/view/HomeActivity$9;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 1285
    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/utils/DialogUtils;->setOnButtonListener(Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/DialogUtils;->show()V

    .line 1300
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playPopDlgSoundEffect()V

    goto :goto_1

    .line 1302
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    goto :goto_1

    .line 1275
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    goto :goto_1

    .line 1270
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrWallPaperMode(Z)V
    .locals 3

    .line 2248
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrWallPaperMode: isWallPaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.is.wallpager.mode"

    .line 2249
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.yfhome.wallpaper_mode_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sys.is.wallpager.mode"

    .line 2251
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2252
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2253
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p0

    const-string v0, "TAG_WALL_MODE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setTvTrunkDrawable(I)V
    .locals 3

    .line 1346
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x38

    const/4 v1, 0x0

    .line 1347
    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1348
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTvTrunkDrawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRtl()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",  lange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isArLanguage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1350
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1352
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private showCarlifeButtonView()V
    .locals 3

    .line 2013
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarlifeConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2015
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0b0199

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2016
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2019
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0b0198

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2020
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    const v2, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x36

    const/4 v2, 0x0

    .line 2023
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2024
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showCarplayButtonView()V
    .locals 3

    .line 2032
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0b019b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2035
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2038
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0b019a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2039
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    const v2, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x36

    const/4 v2, 0x0

    .line 2042
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2043
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showMediaMessageView(Z)V
    .locals 4

    .line 2146
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMediaMessageView:isCanHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2149
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2150
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2151
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2152
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2153
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2154
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2155
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2156
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarplayCycle:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2157
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarplayCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2159
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 2160
    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v2

    if-ne p1, v2, :cond_5

    goto :goto_4

    .line 2168
    :cond_5
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 2162
    :cond_6
    :goto_4
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMode()I

    move-result p1

    .line 2164
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onChangeCycleMode(I)V

    .line 2166
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2171
    :goto_5
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2172
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicMessageLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2174
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2175
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2177
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2178
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelect:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2181
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    return-void
.end method

.method private showMediaMessageViewDelay(I)V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$11;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/view/HomeActivity$11;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSourceSelectView()V
    .locals 5

    .line 1979
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1981
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarplayCycle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1982
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicMessageLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1984
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1985
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1986
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1989
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1990
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1993
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 1994
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0b01df

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x36

    .line 1996
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1997
    :cond_1
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1998
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0, v3}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getUsbStatus(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/yftech/yfhome/view/HomeActivity;->showUsbButtonView(II)V

    .line 1999
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getUsbStatus(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yftech/yfhome/view/HomeActivity;->showUsbButtonView(II)V

    .line 2000
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showCarplayButtonView()V

    .line 2001
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showCarlifeButtonView()V

    .line 2002
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "showSourceSelectView: updateSouce !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->updateSource(I)V

    return-void
.end method

.method private showUsbButtonView(II)V
    .locals 9

    const/16 v0, 0x3c

    const/4 v1, 0x6

    const/4 v2, -0x1

    const v3, 0x4dffffff    # 5.3687088E8f

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/16 v6, 0x36

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 2100
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2101
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2102
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 2103
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2104
    invoke-virtual {p1, v7, v1, v6, v0}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 2105
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2106
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 2110
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2111
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2112
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b019f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2113
    invoke-virtual {p1, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2114
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2115
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 2092
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2093
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2094
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b019e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2095
    invoke-virtual {p1, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2096
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2097
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 2067
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2068
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2069
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 2070
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2071
    invoke-virtual {p1, v7, v1, v6, v0}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 2072
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2073
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2077
    :pswitch_6
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2078
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2079
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b019d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2080
    invoke-virtual {p1, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2081
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2082
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2059
    :pswitch_7
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1Loading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2060
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2061
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b019c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2062
    invoke-virtual {p1, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2063
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p2, v8, p1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2064
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private startAcMode(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1397
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 1398
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f0d0038

    .line 1399
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1400
    invoke-static {p0, p1, v1}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1401
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1402
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playHeatSoundEffect()V

    .line 1403
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setACMode(IZ)V

    goto :goto_0

    .line 1387
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1388
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f0d0035

    .line 1389
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1390
    invoke-static {p0, p1, v1}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1391
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1392
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playCoolSoundEffect()V

    .line 1393
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setACMode(IZ)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startAnimator(Landroid/widget/ImageView;)V
    .locals 2

    const-string p0, "rotation"

    const/4 v0, 0x2

    .line 2132
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, 0x1

    .line 2133
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    .line 2134
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x3e8

    .line 2135
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2136
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private startSource(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    .line 679
    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 681
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    .line 682
    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 684
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    .line 685
    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 687
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    .line 688
    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne v0, p1, :cond_5

    .line 690
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    .line 691
    invoke-virtual {p1}, Landroid/widget/TextView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 692
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startUsbSource(II)Z
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getUsbStatus(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 1420
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const p2, 0x7f0d006a

    invoke-virtual {p0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1422
    iput p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    .line 1423
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    const/16 p1, 0xfa

    .line 1424
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageViewDelay(I)V

    return v0

    :cond_1
    const/4 p2, 0x3

    if-ne p2, p1, :cond_2

    .line 1427
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const p2, 0x7f0d006b

    invoke-virtual {p0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateACMode(I)V
    .locals 3

    .line 1805
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateACMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1808
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1809
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1810
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1811
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1817
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 1814
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 1820
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getAirConditionPowerState()I

    move-result p1

    if-nez p1, :cond_0

    .line 1821
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$0JraXzptYT430soB74Pt33MqqWg;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$0JraXzptYT430soB74Pt33MqqWg;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1822
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getAirConditionPowerState()I

    move-result p1

    if-nez p1, :cond_1

    .line 1823
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$N926PUE2CbRZIqVYuRS-gegfRck;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$N926PUE2CbRZIqVYuRS-gegfRck;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1825
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/yftech/yfhome/presenter/CarPresenter;->setACMode(IZ)V

    goto :goto_1

    .line 1831
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastCool:Landroid/widget/TextView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1832
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mFastWarm:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBTCard(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 2221
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0023

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2222
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtConnect:Lcom/yftech/yfhome/utils/DrawableTextView;

    invoke-virtual {p1, v1}, Lcom/yftech/yfhome/utils/DrawableTextView;->setVisibility(I)V

    .line 2223
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtButtonBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2225
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtKeyboard:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2226
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtUser:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2227
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtSearch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2229
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0024

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2230
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtButtonBg:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtKeyboard:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2233
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtUser:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2234
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2235
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBtConnect:Lcom/yftech/yfhome/utils/DrawableTextView;

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/utils/DrawableTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateConnectDeviceStatus()V
    .locals 7

    .line 1865
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarplayPresent()Z

    move-result v0

    .line 1868
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCarplayCertificate()Z

    move-result v1

    .line 1869
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isEasyConnectPresent()Z

    move-result v2

    .line 1870
    iget-boolean v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->IS_DEBUG:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    move v2, v0

    .line 1875
    :cond_0
    sget-object v3, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectDeviceStatus: isCarplayPresent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  isCarlifePresent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  isHicarPresent = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  isCarplayCertificate = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",  isEasyConnectPresent = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkHicar:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1882
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1883
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarlife:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1884
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkEasyconn:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1886
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1887
    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 1890
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->rlConnectDeviceCardRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 2

    .line 1784
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isSportPlusPresent()Z

    move-result v0

    .line 1785
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne v1, p1, :cond_0

    .line 1786
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    const p1, 0x7f0b01f9

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1787
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne v1, p1, :cond_1

    .line 1788
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    const p1, 0x7f0b01f8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1789
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne v1, p1, :cond_2

    .line 1790
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    const p1, 0x7f0b01fa

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1791
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne v1, p1, :cond_3

    if-eqz v0, :cond_3

    .line 1792
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivDriveMode:Landroid/widget/ImageView;

    const p1, 0x7f0b01fb

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateHomeTime()V
    .locals 6

    .line 2301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 2302
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 2303
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2304
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_2

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-le v4, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_2
    if-gt v2, v1, :cond_6

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0xc

    .line 2311
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d001b

    invoke-virtual {p0, v3}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2313
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d004b

    invoke-virtual {p0, v3}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v1, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2316
    :goto_7
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMediaCard()V
    .locals 2

    .line 1917
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSinger()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->updateSource(I)V

    .line 1919
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1920
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangeCycleMode(I)V

    .line 1921
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f0b01be

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1924
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f0b01c0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateMediaMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1845
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaMessage title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", singer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 1847
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicInvalid:Landroid/widget/TextView;

    const p2, 0x7f0d0045

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1848
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1849
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicSinger:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1850
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicInvalid:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f0d0047

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicSinger:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1854
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicInvalid:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1855
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1856
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMusicSinger:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePhoneLinkCard()V
    .locals 3

    .line 1900
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCarplayCertificate()Z

    move-result v0

    .line 1901
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1902
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x7f0b01b5

    goto :goto_0

    :cond_0
    const v0, 0x7f060076

    :goto_0
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1903
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 1905
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v0, :cond_2

    const v0, 0x7f0b01b3

    goto :goto_1

    :cond_2
    const v0, 0x7f060077

    :goto_1
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1906
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    const v2, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    if-eqz v0, :cond_3

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 1909
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1910
    :cond_3
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mPhoneLinkCarplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateRadioCard()V
    .locals 5

    .line 2189
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getRadioCurrType()I

    move-result v0

    .line 2190
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getBand()Ljava/lang/String;

    move-result-object v1

    .line 2191
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getUnit()Ljava/lang/String;

    move-result-object v2

    .line 2192
    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V

    .line 2194
    sget-object v2, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRadioCard: radioType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", band = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getCurrStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2197
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabStationLable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getCurrStationLable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2199
    sget v2, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v2, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    const v2, 0x7f0d0039

    invoke-virtual {p0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b018e

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0186

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2204
    :goto_1
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2205
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isScanStatus()Z

    move-result v0

    .line 2206
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2207
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 2208
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2210
    :cond_2
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private updateSource(I)V
    .locals 3

    .line 1935
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSource:source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1938
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1939
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1940
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1941
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0b0188

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1965
    iget-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mIsFirstRun:Z

    if-eqz p1, :cond_0

    .line 1966
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1960
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarplay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1961
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const v0, 0x7f0b018a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1956
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectCarlife:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1957
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const v0, 0x7f0b0189

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1952
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectBt:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1953
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1948
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1949
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const v0, 0x7f0b0190

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1944
    :pswitch_4
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSourceSelectUSB1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1945
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSource:Landroid/widget/ImageView;

    const v0, 0x7f0b018f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1970
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mIsFirstRun:Z

    if-eqz p1, :cond_1

    .line 1971
    iput-boolean v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mIsFirstRun:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2377
    array-length p1, p4

    if-lez p1, :cond_8

    const/4 p1, 0x0

    .line 2378
    aget-object p2, p4, p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x30cf41

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x3164ae

    if-eq v0, v1, :cond_1

    const v1, 0x35dafd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, p1

    goto :goto_1

    :cond_1
    const-string v0, "info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_2
    const-string v0, "help"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v3

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p0, "show "

    .line 2402
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "   fast_cool_open"

    .line 2403
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, " "

    .line 2404
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2380
    :pswitch_1
    array-length p2, p4

    if-le p2, v4, :cond_7

    .line 2381
    aget-object p2, p4, v4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2f23ae

    if-eq v0, v1, :cond_5

    const v1, 0x5a655d

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "fast_cool_open"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_5
    const-string p1, "door"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v3

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    .line 2389
    :pswitch_2
    aget-object p1, p4, v2

    const/4 p2, 0x3

    .line 2390
    aget-object p2, p4, p2

    .line 2391
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p4, "0"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/yfhome/presenter/CarPresenter;->testDoorStatus(IZ)V

    const-string p0, "show door!"

    .line 2392
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3
    const p1, 0x7f0d0035

    .line 2383
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2384
    invoke-static {p0, p1, v4}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2385
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playCoolSoundEffect()V

    const-string p0, "show StartCarPrompt!"

    .line 2386
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p0, "no thing show !"

    .line 2396
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string p0, "no thing done !"

    .line 2408
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 2369
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->newResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 2370
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->newResources:Landroid/content/res/Resources;

    return-object p0

    .line 2372
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public onAppConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 2355
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->changeLanguage(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCarPlayUIDisplayStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1772
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/DialogUtils;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1774
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    :cond_0
    return-void
.end method

.method public onChangeCycleMode(I)V
    .locals 3

    .line 1752
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeCycleMode:mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    .line 1763
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    const p1, 0x7f0b01c4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1759
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    const p1, 0x7f0b01c7

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1756
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaCycle:Landroid/widget/ImageView;

    const p1, 0x7f0b01b7

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeFavoriteStatus(Z)V
    .locals 0

    .line 1618
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onChangePlayError(Z)V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1691
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onChangePlayStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1682
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    const p1, 0x7f0b01be

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1684
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPlayPause:Landroid/widget/ImageView;

    const p1, 0x7f0b01c0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onChangeRadioPlayStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1609
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isScanStatus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1610
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    const p1, 0x7f060081

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1612
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    const p1, 0x7f060080

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onChangeScanStatus(Z)V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1624
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f060081

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f060080

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChangedACMode(I)V
    .locals 0

    .line 1517
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateACMode(I)V

    return-void
.end method

.method public onChangedBTConnect(I)V
    .locals 0

    .line 1550
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateBTCard(I)V

    return-void
.end method

.method public onChangedCarBodyNoLogoReset()V
    .locals 4

    .line 1533
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1536
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1537
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    const v2, 0x7f0b01af

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1538
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->car_mirror:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarTrunk:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    const v3, 0x7f0b01ed

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1542
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFRDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    const v1, 0x7f0b01ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRRDoor:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onChangedCarBodyPicture(I)V
    .locals 0

    .line 1528
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChangedCarlifeConnectStatus(I)V
    .locals 0

    .line 1746
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showCarlifeButtonView()V

    return-void
.end method

.method public onChangedCarplayConnectStatus(I)V
    .locals 0

    .line 1740
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showCarplayButtonView()V

    .line 1741
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updatePhoneLinkCard()V

    return-void
.end method

.method public onChangedDabStationLable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabStationLable:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvDabName:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangedDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 1512
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    return-void
.end method

.method public onChangedFrontLeftDoor(Z)V
    .locals 2

    .line 1478
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1483
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFLDoor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const p1, 0x7f0b01ee

    goto :goto_0

    :cond_1
    const p1, 0x7f0b01ed

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChangedFrontRightDoor(Z)V
    .locals 1

    .line 1488
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1490
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarFRDoor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onChangedHood(Z)V
    .locals 2

    .line 1453
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1458
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarHood:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const p1, 0x7f0b01b0

    goto :goto_0

    :cond_1
    const p1, 0x7f0b01af

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1658
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedMediaMessage:title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", singer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    if-eqz v0, :cond_0

    .line 1661
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageView(Z)V

    .line 1662
    invoke-direct {p0, p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChangedMediaProgress(I)V
    .locals 3

    .line 1668
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedMediaProgress progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1672
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPriv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    .line 1673
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1674
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onChangedMediaSource(I)V
    .locals 3

    .line 1630
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedMediaSource:source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iput p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const-string v0, ""

    const-string v1, ""

    .line 1634
    invoke-direct {p0, v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showSourceSelectView()V

    .line 1636
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateSource(I)V

    goto :goto_0

    .line 1638
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$12;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$12;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onChangedMirror(Z)V
    .locals 0

    .line 1463
    iget-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz p1, :cond_0

    return-void

    .line 1465
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->car_mirror:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onChangedPowerMode(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 0

    .line 1522
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateACMode(I)V

    .line 1523
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getDrivingMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    return-void
.end method

.method public onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1555
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 1556
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioMessageLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->llDabMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1558
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    const p2, 0x7f0b0004

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1560
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getRdsCommonString()Ljava/lang/String;

    move-result-object p1

    .line 1561
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRdsPresent:Z

    if-eqz v0, :cond_1

    const-string v0, "FM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->onRdsCommonStringChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1564
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBand:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1565
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioUnit:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1566
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBand:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioFrequency:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getFrequency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->llDabMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1571
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioMessageLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1572
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBand:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioUnit:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1574
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBandChange:Landroid/widget/ImageView;

    const p2, 0x7f0d0039

    invoke-virtual {p0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getBand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0b018e

    goto :goto_1

    :cond_2
    const p2, 0x7f0b0186

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1577
    :goto_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavorite()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onChangedRadioFrequency(Ljava/lang/String;)V
    .locals 0

    .line 1604
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioFrequency:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangedRearLeftDoor(Z)V
    .locals 2

    .line 1495
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1500
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRLDoor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const p1, 0x7f0b01f0

    goto :goto_0

    :cond_1
    const p1, 0x7f0b01ef

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChangedRearRightDoor(Z)V
    .locals 1

    .line 1505
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1507
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarRRDoor:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onChangedTrunk(Z)V
    .locals 1

    .line 1470
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 1472
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarTrunk:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onChangedUSBScan(IZ)V
    .locals 2

    .line 1696
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getUsbStatus(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/yftech/yfhome/view/HomeActivity;->showUsbButtonView(II)V

    if-nez p2, :cond_3

    .line 1699
    iget p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 1702
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1705
    invoke-static {p1}, Lcom/yftech/yfhome/utils/Utils;->getAudioFocusByClientId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 1707
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getBTMusicConnectStatus()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 1710
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentMediaSource(I)V

    .line 1716
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1718
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const p2, 0x7f0d0047

    invoke-virtual {p0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentTitle(Ljava/lang/String;)V

    .line 1719
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentSinger(Ljava/lang/String;)V

    goto :goto_1

    .line 1721
    :cond_2
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentTitle(Ljava/lang/String;)V

    .line 1722
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentSinger(Ljava/lang/String;)V

    .line 1725
    :goto_1
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaCard()V

    .line 1726
    invoke-direct {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageView(Z)V

    :cond_3
    return-void
.end method

.method public onChangedUSBStatus(IZ)V
    .locals 0

    .line 1735
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p2, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getUsbStatus(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->showUsbButtonView(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x64

    const v2, 0x7f0d001e

    const v3, 0x7f0d001f

    const/16 v4, 0x8

    const v5, 0x7f0d0052

    const-wide/16 v6, 0x1388

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x1e

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 1235
    :sswitch_0
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->sendTrunkCmd()V

    goto/16 :goto_8

    .line 966
    :sswitch_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iput-boolean v12, p1, Lcom/yftech/yfhome/presenter/MediaPresenter;->isMusicSourceChangedByUser:Z

    .line 967
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 968
    invoke-direct {p0, v12, v12}, Lcom/yftech/yfhome/view/HomeActivity;->startUsbSource(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 970
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_usb2 isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 972
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 973
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 975
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 976
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 949
    :sswitch_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iput-boolean v12, p1, Lcom/yftech/yfhome/presenter/MediaPresenter;->isMusicSourceChangedByUser:Z

    .line 950
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 951
    invoke-direct {p0, v11, v11}, Lcom/yftech/yfhome/view/HomeActivity;->startUsbSource(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 954
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_usb1 isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 957
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 958
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 960
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 961
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    :cond_3
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 886
    :sswitch_3
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->updateMediaCard()V

    .line 887
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 888
    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSinger()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move v11, v12

    .line 887
    :cond_5
    invoke-direct {p0, v11}, Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageView(Z)V

    .line 891
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 892
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 893
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_close isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 981
    :sswitch_4
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 982
    iput v10, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    .line 983
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, v10}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    .line 987
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_carplay isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 990
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 992
    :cond_7
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCarplayCertificate()Z

    move-result p1

    if-nez p1, :cond_8

    .line 993
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 995
    :cond_8
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 996
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    :cond_9
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 1001
    :sswitch_5
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarlifeConnect()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1002
    iput v9, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    .line 1003
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, v9}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    .line 1007
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_carlife isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1010
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 1012
    :cond_a
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1013
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1014
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    :cond_b
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 921
    :sswitch_6
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getBTMusicConnectStatus()I

    move-result p1

    if-ne v8, p1, :cond_c

    .line 922
    iput v8, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    .line 923
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, v8}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    .line 927
    iput-boolean v12, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick source_select_bt isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 929
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 930
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_8

    .line 932
    :cond_c
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 933
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p1, v9}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    .line 935
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->isBlueToothConnected()Z

    move-result p1

    .line 936
    sget-object v2, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blueToothConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    const p1, 0x7f0d002d

    .line 940
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_d
    const p1, 0x7f0d002c

    .line 943
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 945
    :goto_0
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v3, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$LdcDGbyp1jGvfLlS-dbFZ_XCYAI;

    invoke-direct {v3, p0, p1}, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$LdcDGbyp1jGvfLlS-dbFZ_XCYAI;-><init>(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 1042
    :sswitch_7
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->getBTPhoneConnectStatus()I

    move-result p1

    if-ne p1, v8, :cond_29

    .line 1043
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1044
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p0, v10}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    goto/16 :goto_8

    .line 1019
    :sswitch_8
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isArLanguage()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1020
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->next()V

    goto/16 :goto_8

    .line 1022
    :cond_e
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->previous()V

    goto/16 :goto_8

    .line 1026
    :sswitch_9
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->playPause()V

    goto/16 :goto_8

    .line 1029
    :sswitch_a
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isArLanguage()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1030
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->previous()V

    goto/16 :goto_8

    .line 1032
    :cond_f
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->next()V

    goto/16 :goto_8

    .line 1036
    :sswitch_b
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->switchFavorite()V

    goto/16 :goto_8

    .line 871
    :sswitch_c
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->openRadioApp(Landroid/content/Context;)V

    .line 872
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    goto/16 :goto_8

    .line 1039
    :sswitch_d
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPresenter:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->switchBand()V

    goto/16 :goto_8

    .line 1169
    :sswitch_e
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentPhoneLinkType()Ljava/lang/String;

    move-result-object p1

    .line 1170
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isHiCarReConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1171
    invoke-static {p0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    const p1, 0x7f0d0030

    .line 1172
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    :cond_10
    const-string v0, "none"

    .line 1173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "hicar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1

    .line 1177
    :cond_11
    invoke-static {p0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 1178
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->pickPhoneLinkTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->setContent(Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$8;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$8;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 1179
    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/utils/DialogUtils;->setOnButtonListener(Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p1

    .line 1192
    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/DialogUtils;->show()V

    .line 1193
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playPopDlgSoundEffect()V

    goto/16 :goto_8

    .line 1174
    :cond_12
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1175
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 1130
    :sswitch_f
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentPhoneLinkType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    .line 1131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "easyconn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2

    .line 1135
    :cond_13
    invoke-static {p0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 1136
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->pickPhoneLinkTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/utils/DialogUtils;->setContent(Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/view/HomeActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/yftech/yfhome/view/HomeActivity$7;-><init>(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/utils/DialogUtils;->setOnButtonListener(Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p1

    .line 1150
    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/DialogUtils;->show()V

    .line 1151
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playPopDlgSoundEffect()V

    goto/16 :goto_8

    .line 1132
    :cond_14
    :goto_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1133
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 1156
    :sswitch_10
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1157
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v0, :cond_15

    .line 1158
    invoke-virtual {p0, v3}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1159
    new-array v0, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 1162
    :cond_15
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1163
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v10}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 1165
    :cond_16
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.intent.action.start.carplay.setting"

    invoke-static {p0, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 1099
    :sswitch_11
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentPhoneLinkType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    .line 1100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "carlife"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3

    .line 1104
    :cond_17
    invoke-static {p0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 1105
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->pickPhoneLinkTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->setContent(Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity$6;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 1106
    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/utils/DialogUtils;->setOnButtonListener(Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p1

    .line 1119
    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/DialogUtils;->show()V

    .line 1120
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playPopDlgSoundEffect()V

    goto/16 :goto_8

    .line 1101
    :cond_18
    :goto_3
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1102
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v9}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    goto/16 :goto_8

    .line 856
    :sswitch_12
    iget p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    if-eq v9, p1, :cond_1a

    iget p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    if-ne v10, p1, :cond_19

    goto :goto_4

    .line 865
    :cond_19
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    goto :goto_5

    .line 857
    :cond_1a
    :goto_4
    iget p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCurrentSelectSource:I

    if-ne v10, p1, :cond_1b

    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v0, :cond_1b

    .line 858
    invoke-virtual {p0, v3}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 859
    new-array v0, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 862
    :cond_1b
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->startPage(I)V

    .line 867
    :goto_5
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    goto/16 :goto_8

    .line 1214
    :sswitch_13
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1215
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 1216
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    goto/16 :goto_8

    .line 1218
    :cond_1c
    invoke-virtual {p0, v5}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 1198
    :sswitch_14
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1199
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 1200
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    goto/16 :goto_8

    .line 1202
    :cond_1d
    invoke-virtual {p0, v5}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 1206
    :sswitch_15
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1207
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->setDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 1208
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->updateDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    goto/16 :goto_8

    .line 1210
    :cond_1e
    invoke-virtual {p0, v5}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 904
    :sswitch_16
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isArLanguage()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 905
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->next()V

    goto/16 :goto_8

    .line 907
    :cond_1f
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->previous()V

    goto/16 :goto_8

    .line 911
    :sswitch_17
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->playPause()V

    goto/16 :goto_8

    .line 914
    :sswitch_18
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isArLanguage()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 915
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->previous()V

    goto/16 :goto_8

    .line 917
    :cond_20
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->next()V

    goto/16 :goto_8

    .line 898
    :sswitch_19
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mMediaPresenter:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCycleMode()V

    goto/16 :goto_8

    .line 1223
    :sswitch_1a
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCanOpenMyCar()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1224
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1225
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.yftech.yfmycar.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "mycarscheme"

    .line 1226
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1227
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_8

    .line 1231
    :sswitch_1b
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1232
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.yftech.intent.action.start.settings.avdc"

    invoke-static {p0, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 827
    :sswitch_1c
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_WALL_MODE"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 830
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->rel_car:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 832
    invoke-direct {p0, v11}, Lcom/yftech/yfhome/view/HomeActivity;->setCurrWallPaperMode(Z)V

    .line 833
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 836
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->iv_changed:Landroid/widget/ImageView;

    const p1, 0x7f060067

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 838
    :cond_21
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->rel_car:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 840
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_22

    .line 842
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 844
    :cond_22
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    if-eqz p1, :cond_24

    .line 845
    :cond_23
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity;->WALLPAPER_PATH:Ljava/lang/String;

    sget v2, Lcom/yftech/yfhome/utils/Constants;->displayWidth:I

    sget v3, Lcom/yftech/yfhome/utils/Constants;->displayHeight:I

    invoke-static {v1, v2, v3}, Lcom/yftech/yfhome/utils/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 846
    iput-boolean v11, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    .line 848
    :cond_24
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 850
    :goto_6
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 851
    invoke-direct {p0, v12}, Lcom/yftech/yfhome/view/HomeActivity;->setCurrWallPaperMode(Z)V

    .line 852
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->iv_changed:Landroid/widget/ImageView;

    const p1, 0x7f060066

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1092
    :sswitch_1d
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1093
    invoke-direct {p0, v12}, Lcom/yftech/yfhome/view/HomeActivity;->startAcMode(I)V

    goto/16 :goto_8

    .line 1095
    :cond_25
    invoke-virtual {p0, v5}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 1085
    :sswitch_1e
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->isEngineOn()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1086
    invoke-direct {p0, v11}, Lcom/yftech/yfhome/view/HomeActivity;->startAcMode(I)V

    goto/16 :goto_8

    .line 1088
    :cond_26
    invoke-virtual {p0, v5}, Lcom/yftech/yfhome/view/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v12}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 876
    :sswitch_1f
    iput-boolean v11, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    .line 877
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showSourceSelectView()V

    .line 880
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 881
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    :cond_27
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onClick current_source isSelected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isSelected:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    goto :goto_8

    .line 1052
    :sswitch_20
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1053
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p0, v12}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    goto :goto_8

    .line 1056
    :sswitch_21
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1057
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p0, v8}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    goto :goto_8

    .line 1048
    :sswitch_22
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1049
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p0, v11}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    goto :goto_8

    .line 1069
    :sswitch_23
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {p1}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 1070
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p1, v9}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->openBTView(I)V

    .line 1072
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mBluetoothPresenter:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->isBlueToothConnected()Z

    move-result p1

    .line 1073
    sget-object v2, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blueToothConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_28

    const p1, 0x7f0d002f

    .line 1077
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_28
    const p1, 0x7f0d002e

    .line 1080
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1082
    :goto_7
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    new-instance v3, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$jyU-tbsEYBrEM8_UG8WX-tYybfI;

    invoke-direct {v3, p0, p1}, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$jyU-tbsEYBrEM8_UG8WX-tYybfI;-><init>(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    :goto_8
    :sswitch_24
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f070043 -> :sswitch_23
        0x7f070044 -> :sswitch_22
        0x7f070047 -> :sswitch_21
        0x7f070048 -> :sswitch_20
        0x7f070055 -> :sswitch_24
        0x7f07005e -> :sswitch_1f
        0x7f07006b -> :sswitch_1e
        0x7f07006c -> :sswitch_1d
        0x7f07007c -> :sswitch_1c
        0x7f07007d -> :sswitch_1b
        0x7f07007e -> :sswitch_1a
        0x7f070088 -> :sswitch_19
        0x7f070089 -> :sswitch_18
        0x7f07008a -> :sswitch_17
        0x7f07008b -> :sswitch_16
        0x7f07008f -> :sswitch_15
        0x7f070090 -> :sswitch_14
        0x7f070091 -> :sswitch_13
        0x7f070094 -> :sswitch_12
        0x7f0700a3 -> :sswitch_11
        0x7f0700a4 -> :sswitch_10
        0x7f0700a5 -> :sswitch_f
        0x7f0700a6 -> :sswitch_e
        0x7f0700ab -> :sswitch_d
        0x7f0700ac -> :sswitch_c
        0x7f0700b0 -> :sswitch_b
        0x7f0700b1 -> :sswitch_c
        0x7f0700b2 -> :sswitch_a
        0x7f0700b3 -> :sswitch_9
        0x7f0700b4 -> :sswitch_8
        0x7f0700bb -> :sswitch_7
        0x7f0700d2 -> :sswitch_6
        0x7f0700d3 -> :sswitch_5
        0x7f0700d4 -> :sswitch_4
        0x7f0700d5 -> :sswitch_3
        0x7f0700d7 -> :sswitch_2
        0x7f0700d9 -> :sswitch_1
        0x7f070104 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 240
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    iput-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0a001c

    .line 242
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->setContentView(I)V

    .line 243
    sget p1, Lcom/yftech/yfhome/utils/Constants;->displayHeight:I

    if-eqz p1, :cond_0

    sget p1, Lcom/yftech/yfhome/utils/Constants;->displayWidth:I

    if-nez p1, :cond_1

    .line 245
    :cond_0
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/yftech/yfhome/utils/Constants;->displayWidth:I

    .line 248
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p1, Lcom/yftech/yfhome/utils/Constants;->displayHeight:I

    .line 250
    :cond_1
    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->setImmersiveViewStatusBar(Landroid/app/Activity;)V

    .line 251
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->initView()V

    .line 252
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->initPresenter()V

    .line 253
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->initReceiver()V

    .line 255
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->registerTestReceiver()V

    .line 256
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->showSourceSelectView()V

    const-string p1, "audio"

    .line 257
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 258
    new-instance p1, Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-direct {p1, p0}, Lcom/yftech/yfhome/utils/DialogUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    .line 259
    new-instance p1, Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-direct {p1, p0}, Lcom/yftech/yfhome/utils/MySoundPool;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mSoundPool:Lcom/yftech/yfhome/utils/MySoundPool;

    .line 260
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/yftech/yfhome/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 262
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$9X98F0FmKcDYA1ov31P86x7cttU;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/view/-$$Lambda$HomeActivity$9X98F0FmKcDYA1ov31P86x7cttU;-><init>(Lcom/yftech/yfhome/view/HomeActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 267
    :cond_2
    sget-object p1, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: def wallpaper is not null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mHandle:Landroid/os/Handler;

    const/16 v0, 0x28

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_WALL_MODE"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    .line 273
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->setCurrWallPaperMode(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 333
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 334
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    invoke-static {}, Lcom/yftech/yfhome/utils/HomeApplication;->getInstance()Lcom/yftech/yfhome/utils/HomeApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/yftech/yfhome/utils/HomeApplication;->getInstance()Lcom/yftech/yfhome/utils/HomeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/utils/HomeApplication;->unRegisterConfigurationChangeLisenter(Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;)V

    :cond_0
    return-void
.end method

.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 1

    .line 1363
    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    if-eqz v0, :cond_0

    .line 1364
    new-instance v0, Lcom/yftech/yfhome/view/HomeActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/yftech/yfhome/view/HomeActivity$10;-><init>(Lcom/yftech/yfhome/view/HomeActivity;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 325
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/DialogUtils;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mDialog:Lcom/yftech/yfhome/utils/DialogUtils;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    :cond_0
    return-void
.end method

.method public onRdsCommonStringChange(Ljava/lang/String;)V
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioBand:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1590
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioFrequency:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 284
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 285
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: start time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->isHideCar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    .line 287
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isGACLogoPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->isGacLogoPresent:Z

    .line 288
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarbody:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isHideCarModel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mCarPresenter:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    .line 291
    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_WALL_MODE"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->iv_changed:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v3, 0x7f060066

    goto :goto_1

    :cond_1
    const v3, 0x7f060067

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eqz v0, :cond_5

    .line 295
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->rel_car:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    if-eqz v0, :cond_3

    .line 300
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/yftech/yfhome/view/HomeActivity;->WALLPAPER_PATH:Ljava/lang/String;

    sget v4, Lcom/yftech/yfhome/utils/Constants;->displayWidth:I

    sget v5, Lcom/yftech/yfhome/utils/Constants;->displayHeight:I

    invoke-static {v3, v4, v5}, Lcom/yftech/yfhome/utils/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 301
    iput-boolean v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawableChanger:Z

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->mWallPaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_2
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->ivWallPaper:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 311
    :goto_3
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->initCard()V

    .line 312
    invoke-direct {p0}, Lcom/yftech/yfhome/view/HomeActivity;->initCarView()V

    .line 313
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: then time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object v0

    .line 315
    sget-object v1, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: curr doorState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , isPlgmfunccfgPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean v1, p0, Lcom/yftech/yfhome/view/HomeActivity;->isPlgmfunccfgPresent:Z

    if-eqz v1, :cond_6

    .line 318
    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    .line 320
    :cond_6
    sget-object p0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: end time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSignalStatusChanged(Z)V
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioLike:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 1597
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPriv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 1598
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 1599
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->mRadioPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setHovered(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 278
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 3

    .line 1318
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTailDoorStateChanged: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    sget-object v0, Lcom/yftech/yfhome/view/HomeActivity$14;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDoor$TailDoorState:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0d0028

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1338
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f0b01f4

    .line 1340
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->setTvTrunkDrawable(I)V

    goto :goto_1

    .line 1332
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorTravelPercent()I

    move-result p1

    if-lez p1, :cond_0

    const/16 v2, 0x14

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1334
    :goto_0
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1335
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1328
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1329
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1321
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1322
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity;->tvTrunkStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f0b01f3

    .line 1323
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->setTvTrunkDrawable(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
