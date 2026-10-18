.class public final enum Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;
.super Ljava/lang/Enum;
.source "CarlifePlayStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

.field public static final enum NEXT:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

.field public static final enum PAUSE:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

.field public static final enum PLAY:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

.field public static final enum PREVIOUS:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PAUSE:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 5
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    const-string v1, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PLAY:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 6
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    const-string v1, "NEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->NEXT:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 7
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    const-string v1, "PREVIOUS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PREVIOUS:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PAUSE:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PLAY:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->NEXT:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PREVIOUS:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->$VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->$VALUES:[Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    invoke-virtual {v0}, [Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    return-object v0
.end method
