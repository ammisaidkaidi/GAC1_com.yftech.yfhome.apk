.class Lcom/yftech/yfhome/presenter/CarPresenter$13;
.super Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
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

    .line 1043
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$13;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 3

    .line 1046
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$13;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2302(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    .line 1048
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$13;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$13;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedPowerMode(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V

    :cond_0
    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 2

    .line 1055
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
