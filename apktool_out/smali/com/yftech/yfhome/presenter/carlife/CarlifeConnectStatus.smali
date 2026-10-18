.class public final enum Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;
.super Ljava/lang/Enum;
.source "CarlifeConnectStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

.field public static final enum CONNECTED:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

.field public static final enum CONNECTING:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

.field public static final enum DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    .line 5
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->CONNECTING:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    .line 6
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->CONNECTED:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->CONNECTING:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->CONNECTED:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->$VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->$VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    invoke-virtual {v0}, [Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    return-object v0
.end method
