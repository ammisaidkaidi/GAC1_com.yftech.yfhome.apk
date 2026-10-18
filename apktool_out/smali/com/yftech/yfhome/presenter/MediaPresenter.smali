.class public Lcom/yftech/yfhome/presenter/MediaPresenter;
.super Ljava/lang/Object;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;
    }
.end annotation


# static fields
.field private static final REFRESH_DELAY_TIME:I = 0x5dc

.field public static final SOURCE_BT_MUSIC:I = 0x2

.field public static final SOURCE_CARLIFE:I = 0x3

.field public static final SOURCE_CARPLAY:I = 0x4

.field public static final SOURCE_EASYCONN:I = 0x8

.field public static final SOURCE_HICAR:I = 0x5

.field public static final SOURCE_NULL:I = -0x1

.field public static final SOURCE_RADIO:I = 0x7

.field public static final SOURCE_USB:I = 0x6

.field public static final SOURCE_USB_1:I = 0x0

.field public static final SOURCE_USB_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPresenter"

.field public static final USB_INDEX_1:I = 0x0

.field public static final USB_INDEX_2:I = 0x1

.field public static final USB_STATUS_EXIST:I = 0x1

.field public static final USB_STATUS_INVALID_MUSIC:I = 0x3

.field public static final USB_STATUS_NO_EXIST:I = 0x0

.field public static final USB_STATUS_SCAN:I = 0x2

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/MediaPresenter;


# instance fields
.field private checkCarPlayPlayingStatusRunable:Ljava/lang/Runnable;

.field private isAvailable:Z

.field public isMusicSourceChangedByUser:Z

.field private listener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

.field private mBTMusicConnectStatus:I

.field private mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

.field private mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

.field private mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

.field private mCarMusicControlCallback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

.field private mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

.field private mCarplayControl:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentMediaSource:I

.field private mCycleMode:I

.field private mHandle:Landroid/os/Handler;

.field public mHiCarReConnected:Z

.field private mIsCarlifeConnect:Z

.field private mIsCarplayConnect:Z

.field private mIsPlayError:Z

.field private mIsPlaying:Z

.field private mMusicFilePath:Ljava/lang/String;

.field private mOnChangedMediaListener:Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

.field private mOnDataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private mProgress:I

.field private mSinger:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->isAvailable:Z

    .line 77
    iput v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mProgress:I

    .line 87
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlayError:Z

    .line 93
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHiCarReConnected:Z

    .line 95
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->isMusicSourceChangedByUser:Z

    .line 97
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$1;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    .line 724
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$2;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    .line 796
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$3;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    .line 896
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$4;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$4;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicControlCallback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    .line 978
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$5;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$5;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnDataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    .line 1006
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$6;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$6;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    .line 1052
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$7;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$7;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    .line 1126
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$8;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$8;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->checkCarPlayPlayingStatusRunable:Ljava/lang/Runnable;

    .line 1134
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$9;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$9;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->listener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    .line 105
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 108
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    .line 109
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mBTMusicConnectStatus:I

    .line 111
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 113
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    .line 114
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicControlCallback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/yftech/car/media/music/CarMusicManager;->registerMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;Landroid/os/Handler;)V

    .line 115
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    .line 116
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnDataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;Landroid/os/Handler;)V

    .line 119
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    .line 120
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->registerCarPhoneLinkMediaCallback(Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;Landroid/os/Handler;)V

    const-string p1, "carplay"

    .line 122
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarplayConnect:Z

    const-string p1, "carlife"

    .line 123
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarlifeConnect:Z

    .line 125
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarplayControl:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    .line 126
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarplayControl:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->listener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->setCarplayListener(Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;)V

    .line 128
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSource(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    .line 129
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getSinger()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlaying:Z

    .line 132
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMode()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCycleMode:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getSinger()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/data/CarMediaDataManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mProgress:I

    return p0
.end method

.method static synthetic access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mProgress:I

    return p1
.end method

.method static synthetic access$1500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mMusicFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mMusicFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/music/CarMusicManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCycleMode:I

    return p1
.end method

.method static synthetic access$1800(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarlifeConnect:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarlifeConnect:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarplayConnect:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarplayConnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSourceByClientId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mBTMusicConnectStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mBTMusicConnectStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnChangedMediaListener:Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlayError:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlayError:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    return-object p1
.end method

.method private getCurrentSource(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    .line 571
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 574
    aget-object v1, v1, v3

    .line 575
    invoke-direct {p0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSourceByClientId(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 578
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-nez v1, :cond_1

    .line 579
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v2

    if-lez v2, :cond_3

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarlifeConnect()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result p0

    if-nez p0, :cond_4

    .line 583
    :cond_3
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSource:Source="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is not available!!!!!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    move v0, v1

    .line 589
    :cond_5
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSource strSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ret"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getCurrentSourceByClientId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    .line 601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.yftech.media.music.service.MusicService"

    .line 602
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 604
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    .line 608
    :cond_0
    sget-object v2, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSourceByClientId:path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 610
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_1
    if-ne v3, p0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 p0, 0x6

    goto :goto_0

    :cond_3
    const-string p0, "com.yftech.service.bluetooth.profiles.AvrcpManager"

    .line 619
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string p0, "carlife"

    .line 621
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string p0, "com.autochips.carplay.resourcemanagerment"

    .line 623
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x4

    .line 627
    :cond_6
    :goto_1
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSourceByClientId clientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/MediaPresenter;
    .locals 2

    .line 136
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mInstance:Lcom/yftech/yfhome/presenter/MediaPresenter;

    if-nez v0, :cond_1

    .line 137
    const-class v0, Lcom/yftech/yfhome/presenter/MediaPresenter;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/MediaPresenter;->mInstance:Lcom/yftech/yfhome/presenter/MediaPresenter;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/MediaPresenter;->mInstance:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 141
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 143
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mInstance:Lcom/yftech/yfhome/presenter/MediaPresenter;

    return-object p0
.end method

.method private getSinger()Ljava/lang/String;
    .locals 4

    .line 671
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarplayControl:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 680
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.ARTIST"

    .line 682
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 674
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 693
    :goto_1
    sget-object v1, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSinger ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMediaSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTitle()Ljava/lang/String;
    .locals 4

    .line 638
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarplayControl:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 647
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 649
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 660
    :goto_1
    sget-object v1, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMediaSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public connectPhoneLink(Ljava/lang/String;)V
    .locals 2

    .line 202
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectPhoneLink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->connectByUsb(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectPhoneLink(Ljava/lang/String;)V
    .locals 2

    .line 188
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectPhoneLink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    return-void
.end method

.method public getBTMusicConnectStatus()I
    .locals 0

    .line 559
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mBTMusicConnectStatus:I

    return p0
.end method

.method public getCurrentMediaSource()I
    .locals 3

    .line 259
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    return p0
.end method

.method public getCurrentPhoneLinkType()Ljava/lang/String;
    .locals 3

    .line 170
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPhoneLinkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 175
    :cond_0
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentPhoneLinkType phoneLink is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "none"

    return-object p0
.end method

.method public getCurrentProgress()I
    .locals 3

    .line 321
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mProgress:I

    return p0
.end method

.method public getCurrentSinger()Ljava/lang/String;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    .line 302
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSinger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    .line 281
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getCycleMode()I
    .locals 3

    .line 523
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCycleMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCycleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCycleMode:I

    return p0
.end method

.method public getUsbStatus(I)I
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 539
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMediaDataManager:Lcom/yftech/car/media/data/CarMediaDataManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 549
    :goto_0
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsbStatus usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isCarlifeConnect()Z
    .locals 3

    .line 720
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarlifeConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarlifeConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarlifeConnect:Z

    return p0
.end method

.method public isCarplayConnect()Z
    .locals 3

    .line 709
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarplayConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarplayConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsCarplayConnect:Z

    return p0
.end method

.method public isHiCarReConnected()Z
    .locals 3

    .line 698
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHiCarReConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHiCarReConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHiCarReConnected:Z

    return p0
.end method

.method public isPlayError()Z
    .locals 3

    .line 157
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlayError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlayError:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 5

    .line 482
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 492
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getCurPhoneLinkMediaInfo()Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 496
    :cond_0
    sget-object v2, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying: currStatus == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_1
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    const-string v2, "PhoneLinkMediaInfo is null , return false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isPlayingBluetoothMusic()Z

    move-result v1

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v1

    .line 505
    :goto_0
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMediaSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public next()V
    .locals 3

    .line 456
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 467
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->next()Z

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->nextBluetoothMusic()Z

    goto :goto_0

    .line 460
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->next()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public openMediaApp(Landroid/content/Context;I)V
    .locals 2

    .line 218
    sget-object p1, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openMediaApp type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "hicar"

    .line 239
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->connectPhoneLink(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "carplay"

    .line 235
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->connectPhoneLink(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "carlife"

    .line 231
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->connectPhoneLink(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.multimedia"

    const-string p2, "com.yftech.libmusic.MusicMainActivity"

    const-string v0, "music_source"

    const-string v1, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/yftech/yfhome/utils/Utils;->startAppByView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 224
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.multimedia"

    const-string p2, "com.yftech.libmusic.MusicMainActivity"

    const-string v0, "music_source"

    const-string v1, "MUSIC_SOURCE_OF_USB2"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/yftech/yfhome/utils/Utils;->startAppByView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.multimedia"

    const-string p2, "com.yftech.libmusic.MusicMainActivity"

    const-string v0, "music_source"

    const-string v1, "MUSIC_SOURCE_OF_USB1"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/yftech/yfhome/utils/Utils;->startAppByView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "net.easyconn"

    const-string v0, "net.easyconn.ui.Yf06MainActivity"

    .line 243
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 245
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mContext:Landroid/content/Context;

    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    .line 246
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .line 393
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 404
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->stop()Z

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->pause()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public play(I)V
    .locals 3

    .line 329
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    if-eq p1, v0, :cond_0

    .line 334
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    const-string v1, "pause the music now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->pause()V

    :cond_0
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 371
    :pswitch_0
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    if-eq p1, v0, :cond_1

    const-string v0, ""

    .line 372
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    const-string v0, ""

    .line 373
    iput-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    .line 375
    :cond_1
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->play()Z

    goto :goto_0

    .line 362
    :pswitch_1
    iget v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    if-eq p1, v1, :cond_2

    const-string v1, ""

    .line 363
    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    goto :goto_0

    .line 351
    :pswitch_2
    iget v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    if-eq v0, v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v1, v0, v0}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    .line 353
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    .line 354
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->play()V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->play()V

    goto :goto_0

    .line 340
    :pswitch_3
    iget v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    if-eqz v1, :cond_4

    .line 341
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    .line 342
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->play()V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->play()V

    .line 383
    :cond_5
    :goto_0
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    .line 384
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnChangedMediaListener:Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    if-eqz v0, :cond_6

    .line 385
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnChangedMediaListener:Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public playPause()V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->pause()V

    goto :goto_0

    .line 419
    :cond_0
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 3

    .line 433
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 444
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->previous()Z

    goto :goto_0

    .line 440
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->previousBluetoothMusic()Z

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->previous()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .line 149
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    .line 150
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarPhoneLinkMediaCallback:Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;)V

    .line 152
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicControlCallback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/music/CarMusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    .line 153
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnDataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    return-void
.end method

.method public sendCarPlayTouchEvent(I)V
    .locals 2

    .line 425
    sget-object p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCarPlayTouchEvent: touchType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->updateCarPlayMedia(I)V

    return-void
.end method

.method public setCurrentMediaSource(I)V
    .locals 3

    .line 268
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCurrentMediaSource:I

    return-void
.end method

.method public setCurrentSinger(Ljava/lang/String;)V
    .locals 3

    .line 311
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSinger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mSinger:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTitle(Ljava/lang/String;)V
    .locals 3

    .line 290
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setCycleMode()V
    .locals 2

    .line 513
    sget-object v0, Lcom/yftech/yfhome/presenter/MediaPresenter;->TAG:Ljava/lang/String;

    const-string v1, "setCycleMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mCarMusicManager:Lcom/yftech/car/media/music/CarMusicManager;

    invoke-virtual {p0}, Lcom/yftech/car/media/music/CarMusicManager;->switchPlayMode()V

    return-void
.end method

.method public setOnChangedMediaListener(Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mOnChangedMediaListener:Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    return-void
.end method
