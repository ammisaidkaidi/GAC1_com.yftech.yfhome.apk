.class Lcom/yftech/yfhome/presenter/CarPresenter$12;
.super Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
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

    .line 1032
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2202(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 1036
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGearPositionChanged: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2200(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1038
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$12;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2200(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    :cond_0
    return-void
.end method
