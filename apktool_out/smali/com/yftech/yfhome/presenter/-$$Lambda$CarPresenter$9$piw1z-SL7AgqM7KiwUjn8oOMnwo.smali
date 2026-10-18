.class public final synthetic Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/yfhome/presenter/CarPresenter$9;

.field private final synthetic f$1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;->f$0:Lcom/yftech/yfhome/presenter/CarPresenter$9;

    iput-object p2, p0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;->f$1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;->f$0:Lcom/yftech/yfhome/presenter/CarPresenter$9;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;->f$1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    invoke-static {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9;->lambda$onTailDoorStateChanged$1(Lcom/yftech/yfhome/presenter/CarPresenter$9;Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    return-void
.end method
