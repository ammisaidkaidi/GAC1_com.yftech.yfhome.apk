.class public Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;
.super Ljava/lang/Object;
.source "CarplayControl.java"


# static fields
.field private static final CHECK_CARPLAY_SERVICE_TIME:I = 0xbb8

.field private static final MSG_CHECK_CARPLAY_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarplayControl"

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

.field private mCarplayConnectedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/carplay/CarplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

.field private mCarplayManager:Lcom/autochips/carplay/CarplayManager;

.field private mConnectStatus:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

.field private mHandle:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mProgress:I

.field private mTitle:Ljava/lang/String;

.field private mTotalDuration:I

.field private screenVisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    const/4 v1, 0x2

    .line 43
    iput v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->screenVisible:I

    .line 251
    new-instance v1, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;-><init>(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    .line 365
    new-instance v1, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;-><init>(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->getCarplayManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    return p1
.end method

.method static synthetic access$102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->screenVisible:I

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->screenVisible:I

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->getCarplayManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTotalDuration:I

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    return p1
.end method

.method private getCarplayManager()Lcom/autochips/carplay/CarplayManager;
    .locals 5

    .line 56
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    .line 57
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayCallback:Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/autochips/carplay/CarplayManager;->registerCallback(Lcom/autochips/carplay/CarplayManager$CarplayCallback;Landroid/os/Handler;)I

    .line 59
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    .line 62
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->getConnectionState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v4}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    iget v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    invoke-interface {v0, v2}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayConnectChanged(I)V

    .line 71
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    invoke-virtual {v0, v2}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackLen()I

    move-result v2

    iput v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTotalDuration:I

    .line 76
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackPos()I

    move-result v2

    iput v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    .line 77
    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackStatus()I

    move-result v0

    if-ne v3, v0, :cond_2

    move v1, v3

    :cond_2
    iput-boolean v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    .line 78
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    iget-boolean v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayPlayingChanged(Z)V

    .line 80
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    iget v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayProgressChanged(I)V

    .line 85
    :cond_3
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;
    .locals 2

    .line 89
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mInstance:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    if-nez v0, :cond_1

    .line 90
    const-class v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mInstance:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mInstance:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    .line 94
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 96
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mInstance:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    return-object p0
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    .line 222
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    .line 227
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectStatus()I
    .locals 3

    .line 189
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mConnectStatus:I

    return p0
.end method

.method public getProgress()I
    .locals 3

    .line 237
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mProgress:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayConnectedDeviceList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    .line 203
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCurrentCarplayDevice:Lcom/autochips/carplay/CarplayDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    .line 208
    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalDuration()I
    .locals 3

    .line 247
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTotalDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mTotalDuration:I

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    .line 179
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mIsPlaying:Z

    return p0
.end method

.method public next()I
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 167
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 169
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public openCarplayMediaView()V
    .locals 2

    .line 107
    sget-object v0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    const-string v1, "openCarplayMediaView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/autochips/carplay/CarplayManager;->requestDeviceUI(ILjava/lang/String;)I

    :cond_0
    return-void
.end method

.method public pause()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 137
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 139
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public play()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 122
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 124
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public previous()I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    move-result v0

    .line 152
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayManager:Lcom/autochips/carplay/CarplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autochips/carplay/CarplayManager;->updateMedia(I)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 154
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setCarplayListener(Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->mCarplayListener:Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    return-void
.end method
