.class Lcom/yftech/yfhome/presenter/CarPresenter$9;
.super Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;
.source "CarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/CarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/CarPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onTailDoorStateChanged$0(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 894
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1400()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedTrunk(Z)V

    return-void
.end method

.method public static synthetic lambda$onTailDoorStateChanged$1(Lcom/yftech/yfhome/presenter/CarPresenter$9;Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    return-void
.end method


# virtual methods
.method public onDriverDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 788
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRightHandDriveVehicle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1500(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1500(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1600(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V

    goto :goto_1

    .line 793
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1700(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V

    :goto_1
    return-void
.end method

.method public onHoodDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 846
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoodDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 848
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1300()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 849
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1302(Z)Z

    .line 850
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 851
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/presenter/CarPresenter$9$3;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9$3;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPassengerDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 799
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPassengerDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRightHandDriveVehicle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1500(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 801
    :goto_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1500(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1700(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V

    goto :goto_1

    .line 804
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1600(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V

    :goto_1
    return-void
.end method

.method public onRearLeftDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 810
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 812
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1100()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 813
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1102(Z)Z

    .line 814
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 815
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/presenter/CarPresenter$9$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9$1;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onRearRightDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 828
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 830
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1200()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 831
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1202(Z)Z

    .line 832
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 833
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/presenter/CarPresenter$9$2;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9$2;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 3

    .line 886
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTailDoorStateChanged: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   isPlgmfunccfgPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1800(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1800(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 889
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1400()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 890
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1402(Z)Z

    .line 891
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$QeNg-7CKKrLhnKlX5gufEafrzz4;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$QeNg-7CKKrLhnKlX5gufEafrzz4;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;

    invoke-direct {v1, p0, p1}, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onTrunkDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 3

    .line 864
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrunkDoorStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1800(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "The vehicle is an electric back door, Don\'t judge the status ! ,juge ***onTailDoorStateChanged() "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 869
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 870
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1400()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 871
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1402(Z)Z

    .line 872
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 873
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/presenter/CarPresenter$9$4;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9$4;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
