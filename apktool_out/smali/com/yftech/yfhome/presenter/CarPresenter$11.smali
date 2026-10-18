.class Lcom/yftech/yfhome/presenter/CarPresenter$11;
.super Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;
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

    .line 1020
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$11;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 3

    .line 1024
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveModeChanged mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "originalMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$11;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$100(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$11;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$102(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 1027
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$11;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$11;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    :cond_0
    return-void
.end method
