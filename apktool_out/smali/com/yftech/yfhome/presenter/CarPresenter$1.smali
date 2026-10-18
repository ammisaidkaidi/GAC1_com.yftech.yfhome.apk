.class Lcom/yftech/yfhome/presenter/CarPresenter$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/yftech/yfhome/presenter/CarPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 208
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 210
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RC_DRIVE_MODE->toChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$100(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$100(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v0

    if-eq v0, p1, :cond_b

    .line 214
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$200(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/yftech/yfhome/utils/Utils;->setAvdcDialogShowFlag(Landroid/content/Context;I)V

    .line 215
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 216
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$100(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    goto/16 :goto_0

    .line 218
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_a

    .line 219
    invoke-static {v1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$402(Z)Z

    .line 221
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getDriverTemperature()F

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getPassengerTemperature()F

    move-result v1

    .line 224
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getWindMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    move-result-object v2

    .line 225
    iget-object v3, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isACEnabled()Z

    move-result v3

    .line 226
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAirCirculationState()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    move-result-object v4

    .line 227
    iget-object v5, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v5}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isDualSyncEnabled()Z

    move-result v5

    .line 229
    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: isAutoAir = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v8}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  isAirSingleZone =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v8}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  mACMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v8}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$800(Lcom/yftech/yfhome/presenter/CarPresenter;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n autoMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " ,  DriverTemperature = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",  passengerTemperature = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "\n windMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",  acEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",   circulationState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",  syncEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v6}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$800(Lcom/yftech/yfhome/presenter/CarPresenter;)I

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_5

    .line 234
    iget-object v6, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v6}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v6

    const/high16 v8, 0x41900000    # 18.0f

    if-eqz v6, :cond_2

    .line 235
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    if-ne p1, v2, :cond_1

    cmpl-float p1, v0, v8

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 237
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_b

    cmpl-float p1, v1, v8

    if-eqz p1, :cond_b

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 239
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    goto/16 :goto_0

    :cond_2
    cmpl-float p1, v0, v8

    if-nez p1, :cond_4

    .line 243
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 244
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_3

    cmpl-float p1, v1, v8

    if-nez p1, :cond_4

    :cond_3
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FACE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    if-ne v2, p1, :cond_4

    if-eqz v3, :cond_4

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->INNER_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    if-ne v4, p1, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 248
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_b

    if-nez v5, :cond_b

    .line 249
    :cond_4
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 250
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    goto/16 :goto_0

    .line 254
    :cond_5
    iget-object v6, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v6}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$800(Lcom/yftech/yfhome/presenter/CarPresenter;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_b

    .line 255
    iget-object v6, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {v6}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result v6

    const/high16 v8, 0x41e00000    # 28.0f

    if-eqz v6, :cond_7

    .line 256
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    if-ne p1, v2, :cond_6

    cmpl-float p1, v0, v8

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 258
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_b

    cmpl-float p1, v1, v8

    if-eqz p1, :cond_b

    .line 259
    :cond_6
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 260
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    goto :goto_0

    :cond_7
    cmpl-float p1, v0, v8

    if-nez p1, :cond_9

    .line 264
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 265
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_8

    cmpl-float p1, v1, v8

    if-nez p1, :cond_9

    :cond_8
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->FOOT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    if-ne v2, p1, :cond_9

    if-nez v3, :cond_9

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->OUTSIDE_AIR_CIRCULATION:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    if-ne v4, p1, :cond_9

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 269
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z

    move-result p1

    if-nez p1, :cond_b

    if-nez v5, :cond_b

    .line 270
    :cond_9
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 271
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedACMode(I)V

    goto :goto_0

    .line 276
    :cond_a
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_b

    .line 277
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$200(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/yftech/yfhome/utils/Utils;->setAcAutoDialogShowFlag(Landroid/content/Context;I)V

    :cond_b
    :goto_0
    return-void
.end method
