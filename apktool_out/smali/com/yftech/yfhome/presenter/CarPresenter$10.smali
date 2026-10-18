.class Lcom/yftech/yfhome/presenter/CarPresenter$10;
.super Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;
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

    .line 908
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onACStateChanged(Z)V
    .locals 4

    .line 956
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result v0

    .line 957
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onACStateChanged isEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoAir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  fastMode\uff08COOL=0\u3001WARM=1\uff09= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 965
    :goto_1
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 966
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    :cond_2
    return-void
.end method

.method public onAirCirculationStateChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;)V
    .locals 4

    .line 973
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result v0

    .line 974
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirCirculationStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoAir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  fastMode\uff08COOL=0\u3001WARM=1\uff09= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 976
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    if-eq v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    .line 979
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 982
    :goto_1
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 983
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    :cond_2
    return-void
.end method

.method public onAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;)V
    .locals 3

    .line 989
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoModeChanged mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAutoAir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 993
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 995
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    .line 998
    :cond_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1902(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-void
.end method

.method public onDriverTemperatureChanged(F)V
    .locals 4

    .line 911
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result v0

    .line 912
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverTemperatureChanged temp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "  fastMode\uff08COOL=0\u3001WARM=1\uff09= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    const/high16 v0, 0x41e00000    # 28.0f

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 920
    :goto_1
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 921
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    :cond_2
    return-void
.end method

.method public onIonStateChanged(Z)V
    .locals 3

    .line 1012
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIonStateChanged isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2100(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    .line 1016
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2102(Lcom/yftech/yfhome/presenter/CarPresenter;Z)Z

    return-void
.end method

.method public onPassengerTemperatureChanged(F)V
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getACMode()I

    move-result v0

    .line 928
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPassengerTemperatureChanged temp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isAirSingleZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",  fastMode\uff08COOL=0\u3001WARM=1\uff09= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    const/high16 v0, 0x41e00000    # 28.0f

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 936
    :goto_1
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 937
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    :cond_2
    return-void
.end method

.method public onRearDefrostStateChanged(Z)V
    .locals 3

    .line 1003
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearDefrostStateChanged isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2000(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    .line 1007
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$2002(Lcom/yftech/yfhome/presenter/CarPresenter;Z)Z

    return-void
.end method

.method public onWindSpeedChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)V
    .locals 3

    .line 944
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindSpeedChanged speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  isAutoAir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 949
    :goto_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$400()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 950
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$10;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    :cond_1
    return-void
.end method
