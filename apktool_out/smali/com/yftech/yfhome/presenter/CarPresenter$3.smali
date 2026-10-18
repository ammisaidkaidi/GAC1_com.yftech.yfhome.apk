.class Lcom/yftech/yfhome/presenter/CarPresenter$3;
.super Ljava/lang/Object;
.source "CarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/CarPresenter;->setACMode(IZ)V
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

    .line 452
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->getAirConditionPowerState()I

    move-result v0

    const-wide/16 v2, 0x1f4

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->performOffButtonClick()Z

    .line 460
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    move-result-object v0

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    if-eq v0, v4, :cond_2

    .line 463
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->performAutoButtonClick()Z

    .line 464
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$200(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/yftech/yfhome/utils/Utils;->setAcAutoDialogShowFlag(Landroid/content/Context;I)V

    .line 465
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    invoke-virtual {v0, v4}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setWindSpeed(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)Z

    .line 468
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 470
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v0, v4}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setDriverTemperature(F)Z

    .line 471
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setPassengerTemperature(F)Z

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 475
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    invoke-virtual {v0, v4}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setWindMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;)Z

    .line 476
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 478
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isACEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->performACButtonClick()Z

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAirCirculationState()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    move-result-object v0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    if-ne v0, v2, :cond_6

    .line 482
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->performCirculationButtonClick()Z

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isDualSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 485
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->performDualSyncButtonClick()Z

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    :cond_8
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 493
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    :cond_9
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
