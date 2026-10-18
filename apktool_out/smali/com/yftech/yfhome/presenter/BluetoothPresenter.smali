.class public Lcom/yftech/yfhome/presenter/BluetoothPresenter;
.super Ljava/lang/Object;
.source "BluetoothPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;
    }
.end annotation


# static fields
.field public static final BT_VIEW_INDEX_KEY:Ljava/lang/String; = "enter"

.field public static final BT_VIEW_KEYBOARD:I = 0x0

.field public static final BT_VIEW_NORMAL:I = 0x4

.field public static final BT_VIEW_SEARCH:I = 0x2

.field public static final BT_VIEW_SET:I = 0x3

.field public static final BT_VIEW_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPresenter"

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/BluetoothPresenter;


# instance fields
.field private mBTPhoneConnectStatus:I

.field private mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mOnChangedBluetoothListener:Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mBTPhoneConnectStatus:I

    .line 41
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    .line 43
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mBTPhoneConnectStatus:I

    .line 45
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mCarBluetoothManager:Lcom/yftech/car/bluetooth/CarBluetoothManager;

    new-instance v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;-><init>(Lcom/yftech/yfhome/presenter/BluetoothPresenter;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/yftech/yfhome/presenter/BluetoothPresenter;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mBTPhoneConnectStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/presenter/BluetoothPresenter;)Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mOnChangedBluetoothListener:Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/BluetoothPresenter;
    .locals 2

    .line 58
    sget-object v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mInstance:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mInstance:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mInstance:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mInstance:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    return-object p0
.end method


# virtual methods
.method public getBTPhoneConnectStatus()I
    .locals 3

    .line 74
    sget-object v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBTPhoneConnectStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mBTPhoneConnectStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mBTPhoneConnectStatus:I

    return p0
.end method

.method public isBlueToothConnected()Z
    .locals 6

    .line 79
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object p0

    .line 80
    sget-object v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBlueToothConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 81
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 87
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v0, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 89
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v4}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 91
    sget-object v3, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlueToothConnected A2DP_SINKStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AVRCP_CONTROLLERStatus: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HEADSET_CLIENTStatus: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public openBTView(I)V
    .locals 3

    .line 107
    sget-object v0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openBTView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.yftech.btphone"

    invoke-static {p0, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mContext:Landroid/content/Context;

    const-string p1, "com.systemui.bt.show"

    invoke-static {p0, p1}, Lcom/yftech/yfhome/utils/Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mContext:Landroid/content/Context;

    const-string v0, "com.yftech.btphone"

    const-string v1, "enter"

    invoke-static {p0, v0, v1, p1}, Lcom/yftech/yfhome/utils/Utils;->startAppByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnChangedBluetoothListener(Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->mOnChangedBluetoothListener:Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;

    return-void
.end method
