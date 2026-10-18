.class public Lcom/yftech/yfhome/view/TestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TestReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "launchtest"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static isAirConditionOn:Z

.field private static isOneWindOn:Z

.field private static isTestEngineOn:Z

.field private static isTestOn:Z

.field public static mDriveTemp:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "1"

    const-string v1, "systemui.test"

    const-string v2, "0"

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isTestOn:Z

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isAirConditionOn:Z

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isTestEngineOn:Z

    .line 15
    sput-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isOneWindOn:Z

    const/high16 v0, 0x419c0000    # 19.5f

    .line 16
    sput v0, Lcom/yftech/yfhome/view/TestReceiver;->mDriveTemp:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    invoke-static {}, Lcom/yftech/yfhome/view/TestReceiver;->isTestOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 20
    sput-boolean p0, Lcom/yftech/yfhome/view/TestReceiver;->isAirConditionOn:Z

    .line 21
    sput-boolean p0, Lcom/yftech/yfhome/view/TestReceiver;->isTestEngineOn:Z

    :cond_0
    return-void
.end method

.method public static isAirConditionOn()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isAirConditionOn:Z

    return v0
.end method

.method public static isOneWindOn()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isOneWindOn:Z

    return v0
.end method

.method public static isTestEngineOn()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isTestEngineOn:Z

    return v0
.end method

.method public static isTestOn()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/yftech/yfhome/view/TestReceiver;->isTestOn:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "type"

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "temp"

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 31
    sput-boolean p0, Lcom/yftech/yfhome/view/TestReceiver;->isTestOn:Z

    .line 32
    sget-boolean p1, Lcom/yftech/yfhome/view/TestReceiver;->isAirConditionOn:Z

    xor-int/2addr p1, p0

    sput-boolean p1, Lcom/yftech/yfhome/view/TestReceiver;->isAirConditionOn:Z

    .line 33
    sget-boolean p1, Lcom/yftech/yfhome/view/TestReceiver;->isTestEngineOn:Z

    xor-int/2addr p0, p1

    sput-boolean p0, Lcom/yftech/yfhome/view/TestReceiver;->isTestEngineOn:Z

    :goto_0
    return-void
.end method
