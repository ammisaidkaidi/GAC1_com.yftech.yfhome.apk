.class Lcom/yftech/yfhome/presenter/CarPresenter$9$1;
.super Ljava/lang/Object;
.source "CarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/CarPresenter$9;->onRearLeftDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/yfhome/presenter/CarPresenter$9;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9$1;->this$1:Lcom/yftech/yfhome/presenter/CarPresenter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9$1;->this$1:Lcom/yftech/yfhome/presenter/CarPresenter$9;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 819
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9$1;->this$1:Lcom/yftech/yfhome/presenter/CarPresenter$9;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1100()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedRearLeftDoor(Z)V

    return-void
.end method
