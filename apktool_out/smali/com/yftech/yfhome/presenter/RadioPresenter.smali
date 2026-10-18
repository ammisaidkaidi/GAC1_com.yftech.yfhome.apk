.class public Lcom/yftech/yfhome/presenter/RadioPresenter;
.super Ljava/lang/Object;
.source "RadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;
    }
.end annotation


# static fields
.field private static final CHECK_RADIO_MESSAGE_TIME:I = 0x1f4

.field private static final INVALID_RADIO_TYPE:I = -0x1

.field private static final KEY_DAB_SIGNAL_CONGFIG:Ljava/lang/String; = "dab_config_data_rssi_snr"

.field private static final MSG_CHECK_RADIO_MESSAGE:I = 0x0

.field private static final MSG_UPDATE_PLAY_INFO:I = 0x2715

.field private static final MSG_UPDATE_PLAY_ST:I = 0x2714

.field private static final RADIO_FAVOR_MAX_AM:I = 0x14

.field private static final RADIO_FAVOR_MAX_DAB:I = 0x1e

.field private static final RADIO_FAVOR_MAX_FM:I = 0x1e

.field private static REQUEST_MAX_SUM:I = 0xa

.field public static SOURCE_OF_DAB:I = 0x1

.field public static SOURCE_OF_FMAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RadioPresenter"

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/RadioPresenter;


# instance fields
.field private dabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/yfhome/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBand:Ljava/lang/String;

.field private mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrDabPostion:I

.field private mCurrStationLable:Ljava/lang/String;

.field private mCurrStationName:Ljava/lang/String;

.field private mDabChannleInfoListSelectPositionChangedOfRadioAppCallback:Lcom/yftech/car/data/CarDataManager$CarDataCallback;

.field public mDataThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mFmKeepTwoDecima:Z

.field private mFrequency:Ljava/lang/String;

.field private mHandle:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mIsRadioDabPresent:Z

.field private mIsRadioPresent:Z

.field private mIsRadioRdsPresent:Z

.field private mIsSignalPoor:Z

.field private mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

.field public mRadioCurrType:I

.field private mRequestDabInfoListSum:I

.field private mRequestDabInfoSum:I

.field private mUnit:Ljava/lang/String;

.field private minAmSinalConfig:I

.field private minFmSinalConfig:I

.field private minSinalConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    .line 69
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    .line 70
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoSum:I

    .line 75
    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    iput v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 83
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minFmSinalConfig:I

    const/16 v0, 0xc

    .line 84
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minAmSinalConfig:I

    const/16 v0, -0x5f

    .line 85
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minSinalConfig:I

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    .line 566
    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/yfhome/presenter/RadioPresenter$1;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    .line 606
    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$2;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 931
    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter$5;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$5;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDabChannleInfoListSelectPositionChangedOfRadioAppCallback:Lcom/yftech/car/data/CarDataManager$CarDataCallback;

    .line 980
    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter$6;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$6;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    .line 92
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 94
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isFmKeepTwoDecima()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFmKeepTwoDecima:Z

    .line 95
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioDABPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioDabPresent:Z

    .line 96
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioRdsPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioRdsPresent:Z

    .line 97
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    .line 98
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDabChannleInfoListSelectPositionChangedOfRadioAppCallback:Lcom/yftech/car/data/CarDataManager$CarDataCallback;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/yftech/car/data/CarDataManager;->registerCarDataCallback(Lcom/yftech/car/data/CarDataManager$CarDataCallback;Landroid/os/Handler;)V

    .line 99
    iget-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->checkRadioMessage()I

    .line 102
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioDabPresent:Z

    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->initDab()V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/presenter/RadioPresenter;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->checkRadioMessage()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/yfhome/presenter/RadioPresenter;III)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->setSignalPoorSt(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/yfhome/presenter/RadioPresenter;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/car/media/radio/CarRadioManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/yfhome/presenter/RadioPresenter;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoSum:I

    return p0
.end method

.method static synthetic access$1408(Lcom/yftech/yfhome/presenter/RadioPresenter;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoSum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoSum:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 47
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->REQUEST_MAX_SUM:I

    return v0
.end method

.method static synthetic access$1602(Lcom/yftech/yfhome/presenter/RadioPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/yftech/yfhome/presenter/RadioPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isDabPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->updatePlayStatusUi()V

    return-void
.end method

.method static synthetic access$2000(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->updateListData()V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->updateCurrentPlayInfoUi(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/yfhome/presenter/RadioPresenter;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioRdsPresent:Z

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/yfhome/presenter/RadioPresenter;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->updateRadioMessage(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    return-void
.end method

.method private addFavorite()V
    .locals 2

    .line 512
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v1, "addFavorite"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/CarRadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 516
    :cond_0
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "CarRadioManager is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private checkRadioMessage()I
    .locals 11

    .line 163
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/16 v2, 0x1f4

    const/4 v0, -0x1

    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-nez v4, :cond_1

    .line 168
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v4

    iput-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    .line 169
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {v4, v5}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;Landroid/os/Handler;)V

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    .line 172
    invoke-virtual {v4}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    .line 173
    invoke-virtual {v4}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v4

    if-eq v0, v4, :cond_7

    .line 174
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_3

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0039

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    .line 178
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFmKeepTwoDecima:Z

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v10}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    move v0, v5

    goto/16 :goto_2

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    .line 190
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_4

    .line 191
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    iget-object v6, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    iget-object v7, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioFrequency(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-boolean v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeRadioPlayStatus(Z)V

    .line 197
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v1, v4}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move v0, v5

    goto :goto_3

    .line 205
    :cond_7
    :try_start_2
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v4, "Radio message is invalid,check delay!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, v2, v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->checkRadioMessageDelay(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 209
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v4, "Radio message is exception,check delay!"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, v2, v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->checkRadioMessageDelay(J)V

    :goto_3
    return v0
.end method

.method private checkRadioMessageDelay(J)V
    .locals 1

    const-string v0, ""

    .line 223
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    const-string v0, ""

    .line 224
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    const-string v0, ""

    .line 225
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    .line 226
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getCurrDabChannelInfoByDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/yfhome/bean/DabChannelInfo;
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 881
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/yfhome/bean/DabChannelInfo;

    .line 882
    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/RadioPresenter;
    .locals 2

    .line 108
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mInstance:Lcom/yftech/yfhome/presenter/RadioPresenter;

    if-nez v0, :cond_1

    .line 109
    const-class v0, Lcom/yftech/yfhome/presenter/RadioPresenter;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mInstance:Lcom/yftech/yfhome/presenter/RadioPresenter;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mInstance:Lcom/yftech/yfhome/presenter/RadioPresenter;

    .line 113
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 115
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mInstance:Lcom/yftech/yfhome/presenter/RadioPresenter;

    return-object p0
.end method

.method private initCurrentPlayInfo()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfhome/presenter/RadioPresenter$4;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$4;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initDab()V
    .locals 4

    .line 725
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDab mIsRadioPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    if-nez v0, :cond_0

    .line 728
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    .line 732
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-nez v0, :cond_1

    .line 733
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    .line 734
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;Landroid/os/Handler;)V

    .line 738
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;Landroid/os/Handler;)V

    .line 740
    :try_start_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    const-string v1, "dab_config_data_rssi_snr"

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 742
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signalConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 744
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minSinalConfig:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 749
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->initDabChannelInfoList()V

    return-void
.end method

.method private initDabChannelInfoList()V
    .locals 4

    .line 807
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDabChannelInfoList::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->REQUEST_MAX_SUM:I

    if-ge v0, v1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$49oKpvhIlnzemUtJSaW2_9moBQQ;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$49oKpvhIlnzemUtJSaW2_9moBQQ;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    .line 811
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->updateListData()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 813
    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRequestDabInfoListSum:I

    .line 814
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->initCurrentPlayInfo()V

    :goto_0
    return-void
.end method

.method private isDabPlaying()Z
    .locals 3

    .line 367
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p0

    .line 368
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAB isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isShowSignalPoorToast()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioDabPresent:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0062

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$49oKpvhIlnzemUtJSaW2_9moBQQ(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->initDabChannelInfoList()V

    return-void
.end method

.method static synthetic lambda$next$5()V
    .locals 1

    .line 315
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->next()V

    return-void
.end method

.method static synthetic lambda$pause$2()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->pause()V

    return-void
.end method

.method static synthetic lambda$play$1()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    return-void
.end method

.method public static synthetic lambda$playPause$3(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isDabPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 280
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->pause()V

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->play()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$previous$4()V
    .locals 1

    .line 302
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->previous()V

    return-void
.end method

.method public static synthetic lambda$setSignalPoorSt$0(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onSignalStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method private removeFavorite()V
    .locals 2

    .line 524
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v1, "removeFavorite"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/CarRadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    goto :goto_0

    .line 528
    :cond_0
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "CarRadioManager is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSignalPoorSt(III)V
    .locals 3

    .line 133
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 134
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getRssi()B

    move-result p1

    iget p2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minSinalConfig:I

    if-ge p1, p2, :cond_0

    .line 136
    iput-boolean v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    goto :goto_2

    .line 138
    :cond_0
    iput-boolean v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    goto :goto_2

    :cond_1
    if-nez p2, :cond_3

    .line 142
    iget p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minFmSinalConfig:I

    if-gt p3, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    .line 144
    iget p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->minAmSinalConfig:I

    if-gt p3, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    goto :goto_2

    .line 146
    :cond_5
    iput-boolean v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    .line 149
    :goto_2
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mHandle:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$aBWeG4-PDD1J-VIwOeIpUifZqLE;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$aBWeG4-PDD1J-VIwOeIpUifZqLE;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switchDabFavored()V
    .locals 9

    .line 892
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    iget v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/yfhome/bean/DabChannelInfo;

    if-nez v0, :cond_1

    .line 898
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "favored button click, but current dabdata is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 901
    :cond_1
    instance-of v1, v0, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    if-eqz v1, :cond_2

    .line 902
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "favored button click, but current InvalidDabChannelInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 905
    :cond_2
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v4

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isFavored(JIJ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 907
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v5

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->addFavored(JIJ)I

    move-result v0

    if-lez v0, :cond_3

    .line 909
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0056

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 911
    :cond_3
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0054

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 913
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFavor result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 915
    :cond_4
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v2, "has Favored -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v6

    invoke-virtual {v0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->removeFavored(JIJ)I

    move-result v0

    if-lez v0, :cond_5

    .line 918
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 920
    :cond_5
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    .line 893
    :cond_6
    :goto_2
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "favored button click,IndexOutOfBoundsException, size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mCurrDabPostion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCurrentPlayInfoUi(I)V
    .locals 4

    .line 943
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 945
    iput p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    .line 946
    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 947
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfhome/bean/DabChannelInfo;

    .line 948
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentPlayInfoUi: item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v0

    .line 950
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object p1

    .line 953
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "DAB_CHANNEINFO_CHANGED_SERVICE"

    .line 955
    invoke-static {p1, v0}, Lcom/yftech/car/data/CarDataManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p1, "DAB_CHANNEINFO_CHANGED_ENSEMBLE"

    .line 956
    invoke-static {p1, v2}, Lcom/yftech/car/data/CarDataManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 958
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/yfhome/utils/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 960
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrDabPostion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", updateCurrentPlayInfoUi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 962
    :cond_5
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    .line 963
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    .line 964
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedDabStationLable(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavoredDab(I)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    :cond_6
    return-void
.end method

.method private updateListData()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$3;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 803
    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePlayStatusUi()V
    .locals 5

    .line 972
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v0

    .line 973
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAB updatePlayStatusUi isPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v2, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v1, v2, :cond_0

    .line 975
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeRadioPlayStatus(Z)V

    :cond_0
    return-void
.end method

.method private updateRadioMessage(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 6

    .line 538
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    .line 540
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFmKeepTwoDecima:Z

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    .line 545
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0048

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    goto :goto_1

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    .line 549
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    .line 551
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    if-eqz p1, :cond_2

    .line 552
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioFrequency(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;",
            "Ljava/util/List<",
            "Lcom/yftech/yfhome/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 1066
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v1, "convertDabInfos,channelInfoList can \'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_8

    .line 1069
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_4

    .line 1073
    :cond_1
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    .line 1074
    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getList()[Lcom/yftech/car/media/radio/dab/entity/DabProperties;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1075
    array-length v7, v6

    if-gtz v7, :cond_2

    goto :goto_2

    .line 1079
    :cond_2
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v16, v6, v8

    .line 1080
    new-instance v15, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getFrequency()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getEnsembleId()I

    move-result v12

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v13

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;->getTab()I

    move-result v17

    move-object v9, v15

    move-object/from16 v14, v16

    move-object v3, v15

    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lcom/yftech/yfhome/bean/DabChannelInfo;-><init>(JILcom/yftech/car/media/radio/dab/entity/DabLabel;Lcom/yftech/car/media/radio/dab/entity/DabProperties;I)V

    .line 1081
    invoke-virtual/range {v16 .. v16}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getPdFlag()B

    move-result v9

    if-eqz v9, :cond_3

    .line 1082
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1076
    :cond_4
    :goto_2
    sget-object v3, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertDabInfos,properties is Empty, length: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_5

    const-string v6, "null"

    goto :goto_3

    :cond_5
    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void

    .line 1070
    :cond_8
    :goto_4
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertDabInfos,dabEnsembles is Empty, length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    const-string v0, "null"

    goto :goto_5

    :cond_9
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBand()Ljava/lang/String;
    .locals 3

    .line 327
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrStationLable()Ljava/lang/String;
    .locals 3

    .line 867
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrStationLable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationLable:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrStationName()Ljava/lang/String;
    .locals 3

    .line 874
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrStationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrStationName:Ljava/lang/String;

    return-object p0
.end method

.method public getFrequency()Ljava/lang/String;
    .locals 3

    .line 388
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrequency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mFrequency:Ljava/lang/String;

    return-object p0
.end method

.method public getRadioCurrType()I
    .locals 3

    .line 332
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioCurrType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    return p0
.end method

.method public getRdsCommonString()Ljava/lang/String;
    .locals 3

    .line 558
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPS()Ljava/lang/String;

    move-result-object p0

    .line 559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 562
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRdsCommonString: psString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 3

    .line 378
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public isFavoredDab(I)Z
    .locals 8

    .line 1049
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1050
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfhome/bean/DabChannelInfo;

    .line 1051
    instance-of p1, p0, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    if-eqz p1, :cond_0

    .line 1052
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string p1, "current InvalidDabChannelInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p0, :cond_2

    .line 1056
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v5

    invoke-virtual {p0}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isFavored(JIJ)Z

    move-result p0

    move v1, p0

    goto :goto_0

    .line 1059
    :cond_1
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string p1, "channelInfo is null -----"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public isFavorite()Z
    .locals 3

    .line 426
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 427
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCurrDabPostion:I

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavoredDab(I)Z

    move-result p0

    goto :goto_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 436
    :cond_1
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "CarRadioManager is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 439
    :goto_1
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFavorite:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isFavorite(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z
    .locals 3
    .param p1    # Lcom/yftech/car/media/radio/entity/DataOfRadio;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 450
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 457
    :cond_0
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "CarRadioManager is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 459
    :goto_1
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFavorite:result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    .line 398
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 399
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p0

    .line 400
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAB isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 403
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM_AM isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    return p0
.end method

.method public isScanStatus()Z
    .locals 3

    .line 414
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->isScanStatus()Z

    move-result p0

    .line 415
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScanState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSignalPoor()Z
    .locals 3

    .line 125
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSignalPoor:mIsSignalPoor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsSignalPoor:Z

    return p0
.end method

.method public next()V
    .locals 3

    .line 312
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next, currType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isShowSignalPoorToast()V

    .line 314
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 315
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$m20mu9HQKeYwaiJozvS7gmesAi0;->INSTANCE:Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$m20mu9HQKeYwaiJozvS7gmesAi0;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->seekDown()I

    :goto_0
    return-void
.end method

.method public openRadioApp(Landroid/content/Context;)V
    .locals 3

    .line 235
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioApp, mRadioCurrType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioDabPresent:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.yftech.intent.action.start.dabradio"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "isAutoPlay"

    const/4 v1, 0x1

    .line 238
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    if-eqz p1, :cond_1

    .line 242
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.multimedia"

    const-string v0, "com.yftech.libradio.RadioMainActivity"

    const-string v1, "music_source"

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/yftech/yfhome/utils/Utils;->startAppByView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 263
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$3FxJOHVv86zPqS1zcop3gk-LbFA;->INSTANCE:Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$3FxJOHVv86zPqS1zcop3gk-LbFA;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->pause()V

    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 250
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play, mRadioCurrType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$WNI2z9htlzLH3v4C4zOl5t77yso;->INSTANCE:Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$WNI2z9htlzLH3v4C4zOl5t77yso;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->requestAudioFocus()V

    .line 255
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->play()V

    :goto_0
    return-void
.end method

.method public playPause()V
    .locals 2

    .line 276
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isShowSignalPoorToast()V

    .line 277
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$iZkVCAOeUCtKn4VXS6pwZwPbcjM;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$iZkVCAOeUCtKn4VXS6pwZwPbcjM;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->pause()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->play()V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 3

    .line 299
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous, currType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isShowSignalPoorToast()V

    .line 301
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 302
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mDataThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$lsQSBo1xCPj5jC0aJi1clSpIhkI;->INSTANCE:Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$lsQSBo1xCPj5jC0aJi1clSpIhkI;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->seekUp()I

    :goto_0
    return-void
.end method

.method public setOnChangedRadioListener(Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mOnChangedRadioListener:Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    return-void
.end method

.method public switchBand()V
    .locals 3

    .line 340
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchBand,mRadioCurrType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_3

    .line 344
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->setBand(I)I

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mBand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioDabPresent:Z

    if-eqz v0, :cond_1

    .line 348
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 349
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->play()V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_3

    .line 352
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->setBand(I)I

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_3

    .line 358
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mIsRadioPresent:Z

    if-eqz v0, :cond_3

    .line 359
    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    iput v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 360
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/media/radio/CarRadioManager;->setBand(I)I

    :cond_3
    :goto_0
    return-void
.end method

.method public switchFavorite()V
    .locals 6

    .line 467
    sget-object v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v1, "switchFavorite"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isShowSignalPoorToast()V

    .line 469
    iget v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->switchDabFavored()V

    goto/16 :goto_2

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 475
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v1

    .line 476
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v2, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v2

    .line 477
    sget-object v3, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "band:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/16 v1, 0x14

    goto :goto_1

    :cond_2
    const/16 v1, 0x1e

    :goto_1
    if-eqz v2, :cond_3

    .line 482
    array-length v2, v2

    if-lt v2, v1, :cond_3

    .line 483
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 487
    :cond_3
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/yftech/car/media/radio/CarRadioManager;->addFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;IZ)Z

    move-result v0

    .line 488
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFavor result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0056

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0054

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 495
    :cond_5
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mCarRadioManager:Lcom/yftech/car/media/radio/CarRadioManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->removeFavor(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    .line 496
    sget-object v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFavor result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 500
    :cond_6
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->showText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 504
    :cond_7
    sget-object p0, Lcom/yftech/yfhome/presenter/RadioPresenter;->TAG:Ljava/lang/String;

    const-string v0, "CarRadioManager is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
