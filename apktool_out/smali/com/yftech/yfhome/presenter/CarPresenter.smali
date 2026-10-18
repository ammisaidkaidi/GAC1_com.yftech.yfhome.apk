.class public Lcom/yftech/yfhome/presenter/CarPresenter;
.super Ljava/lang/Object;
.source "CarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;
    }
.end annotation


# static fields
.field public static final AC_MODE_FAST_COOL:I = 0x0

.field public static final AC_MODE_FAST_WARM:I = 0x1

.field public static final AC_MODE_NULL:I = -0x1

.field public static final AIR_CONDITION_OFF:I = 0x1

.field public static final AIR_CONDITION_ON:I = 0x0

.field public static final AIR_CONDITION_USELESS:I = 0x2

.field public static final CAR_BODY_DIRECTION_LEFT:I = 0x0

.field public static final CAR_BODY_DIRECTION_RIGHT:I = 0x1

.field public static final DRIVING_MODE_COMFORT:I = 0x1

.field public static final DRIVING_MODE_ECO:I = 0x0

.field public static final DRIVING_MODE_MUD:I = 0x5

.field public static final DRIVING_MODE_SAND:I = 0x4

.field public static final DRIVING_MODE_SNOW:I = 0x3

.field public static final DRIVING_MODE_SPORT:I = 0x2

.field private static final MSG_CHECK_AC_MODE:I = 0xb

.field private static final MSG_RESET_AC_AUTO_DISLOG_SHOW_FLAG:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CarPresenter"

.field private static mACModeSetting:Z = false

.field private static mCurrentIndex:I

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/CarPresenter;

.field private static mIsFrontLeftDoorOpen:Z

.field private static mIsFrontRightDoorOpen:Z

.field private static mIsHoodOpen:Z

.field private static mIsRearLeftDoorOpen:Z

.field private static mIsRearRightDoorOpen:Z

.field private static mIsTrunkOpen:Z


# instance fields
.field private final CAR_BODY_PICTURE_RESID:[I

.field private final DELAY_TIME:I

.field private final RC_DRIVE_MODE:I

.field private isAirSingleZone:Z

.field private isAutoAir:Z

.field private isGacLogoPresent:Z

.field private isPlgmfunccfgPresent:Z

.field private isRightHandDriveVehicle:Z

.field private mACMode:I

.field private mAirConditionCallback:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

.field private mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

.field private mAutoMode:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

.field private mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

.field private mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

.field private mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

.field private mCarDriveManager:Lcom/yftech/vehicle/sdk/CarDriveManager;

.field private mCarInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

.field private mCarPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

.field private mCarPowerManager:Lcom/yftech/vehicle/sdk/CarPowerManager;

.field private mContext:Landroid/content/Context;

.field private mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field private mGear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnionEnable:Z

.field private mIsRearDefogEnable:Z

.field private mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

.field private mPowerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

.field private mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    const/16 v0, 0x169

    .line 76
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    const/16 v0, 0xa

    .line 166
    iput v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->RC_DRIVE_MODE:I

    const/16 v0, 0x1f4

    .line 173
    iput v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->DELAY_TIME:I

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAutoAir:Z

    .line 186
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAirSingleZone:Z

    .line 191
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isPlgmfunccfgPresent:Z

    .line 196
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isRightHandDriveVehicle:Z

    .line 201
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yftech/yfhome/presenter/CarPresenter$1;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    .line 784
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$9;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$9;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    .line 908
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$10;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$10;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionCallback:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

    .line 1020
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$11;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$11;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    .line 1032
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$12;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$12;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    .line 1043
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter$13;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$13;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    iput-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    .line 283
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mContext:Landroid/content/Context;

    .line 284
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    .line 285
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    .line 286
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionCallback:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

    invoke-virtual {p1, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->registerListener(Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;)V

    .line 287
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveManager:Lcom/yftech/vehicle/sdk/CarDriveManager;

    .line 288
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveManager:Lcom/yftech/vehicle/sdk/CarDriveManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    invoke-virtual {p1, v1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V

    .line 289
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isRearDefrostEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearDefogEnable:Z

    .line 290
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAutoMode:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    .line 291
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->isIonEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsAnionEnable:Z

    .line 292
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveManager:Lcom/yftech/vehicle/sdk/CarDriveManager;

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 293
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarPowerManager:Lcom/yftech/vehicle/sdk/CarPowerManager;

    .line 294
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarPowerManager:Lcom/yftech/vehicle/sdk/CarPowerManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {p1, v1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 295
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarPowerManager:Lcom/yftech/vehicle/sdk/CarPowerManager;

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mPowerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    .line 296
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {p1, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 297
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mGear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    .line 298
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    .line 299
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    invoke-virtual {p1, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V

    .line 300
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLeftRightHandDriveVehicles()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;

    move-result-object p1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;->RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isRightHandDriveVehicle:Z

    .line 301
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isGacLogoPresent:Z

    .line 302
    iget-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isRightHandDriveVehicle:Z

    if-eqz p1, :cond_3

    .line 303
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getDriverDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    .line 304
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPassengerDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    goto :goto_5

    .line 306
    :cond_3
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getDriverDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v0

    :goto_3
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    .line 307
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPassengerDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v0

    :goto_4
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    .line 309
    :goto_5
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getRearLeftDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_6

    move p1, v2

    goto :goto_6

    :cond_6
    move p1, v0

    :goto_6
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    .line 310
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getRearRightDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_7

    move p1, v2

    goto :goto_7

    :cond_7
    move p1, v0

    :goto_7
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    .line 311
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTrunkDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_8

    move p1, v2

    goto :goto_8

    :cond_8
    move p1, v0

    :goto_8
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    .line 312
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDoorManager:Lcom/yftech/vehicle/sdk/CarDoorManager;

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getHoodDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;

    move-result-object v1

    if-ne p1, v1, :cond_9

    move p1, v2

    goto :goto_9

    :cond_9
    move p1, v0

    :goto_9
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    .line 313
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getAirConditionType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;

    move-result-object p1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;

    if-ne p1, v1, :cond_a

    move p1, v2

    goto :goto_a

    :cond_a
    move p1, v0

    :goto_a
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAutoAir:Z

    .line 314
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getAirConditioningZones()Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;

    move-result-object p1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;->SINGLE_ZONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;

    if-ne p1, v1, :cond_b

    move v0, v2

    :cond_b
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAirSingleZone:Z

    .line 315
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isPlgmfunccfgPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isPlgmfunccfgPresent:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0169
        0x7f0b0168
        0x7f0b0167
        0x7f0b0166
        0x7f0b0165
        0x7f0b0164
        0x7f0b0163
        0x7f0b0162
        0x7f0b0161
        0x7f0b0160
        0x7f0b015f
        0x7f0b015e
        0x7f0b015d
        0x7f0b015a
        0x7f0b015b
        0x7f0b015a
        0x7f0b0159
        0x7f0b0158
        0x7f0b0157
        0x7f0b0156
        0x7f0b0155
        0x7f0b0154
        0x7f0b0153
        0x7f0b0152
        0x7f0b0151
        0x7f0b0150
        0x7f0b014f
        0x7f0b014e
        0x7f0b014d
        0x7f0b014c
        0x7f0b014b
        0x7f0b014a
        0x7f0b0149
        0x7f0b0148
        0x7f0b0147
        0x7f0b0146
        0x7f0b0145
        0x7f0b0144
        0x7f0b0143
        0x7f0b0142
        0x7f0b0141
        0x7f0b0140
        0x7f0b013f
        0x7f0b013e
        0x7f0b013d
        0x7f0b013c
        0x7f0b013b
        0x7f0b013a
        0x7f0b0139
        0x7f0b0138
        0x7f0b0137
        0x7f0b0136
        0x7f0b0135
        0x7f0b0134
        0x7f0b0133
        0x7f0b0132
        0x7f0b0131
        0x7f0b0130
        0x7f0b012f
        0x7f0b012e
        0x7f0b012d
        0x7f0b012c
        0x7f0b012b
        0x7f0b012a
        0x7f0b0129
        0x7f0b0128
        0x7f0b0127
        0x7f0b0126
        0x7f0b0125
        0x7f0b0124
        0x7f0b0123
        0x7f0b0122
        0x7f0b0121
        0x7f0b0120
        0x7f0b011f
        0x7f0b011e
        0x7f0b011d
        0x7f0b011c
        0x7f0b011b
        0x7f0b011a
        0x7f0b0119
        0x7f0b0118
        0x7f0b0117
        0x7f0b0116
        0x7f0b0115
        0x7f0b0114
        0x7f0b0113
        0x7f0b0112
        0x7f0b0111
        0x7f0b0110
        0x7f0b010f
        0x7f0b010e
        0x7f0b010d
        0x7f0b010c
        0x7f0b010b
        0x7f0b010a
        0x7f0b0109
        0x7f0b0108
        0x7f0b0107
        0x7f0b0106
        0x7f0b0105
        0x7f0b0104
        0x7f0b0103
        0x7f0b0102
        0x7f0b0101
        0x7f0b0100
        0x7f0b00ff
        0x7f0b00fe
        0x7f0b00fd
        0x7f0b00fc
        0x7f0b00fb
        0x7f0b00fa
        0x7f0b00f9
        0x7f0b00f8
        0x7f0b00f7
        0x7f0b00f6
        0x7f0b00f5
        0x7f0b00f4
        0x7f0b00f3
        0x7f0b00f2
        0x7f0b00f1
        0x7f0b00f0
        0x7f0b00ef
        0x7f0b00ee
        0x7f0b00ed
        0x7f0b00ec
        0x7f0b00eb
        0x7f0b00ea
        0x7f0b00e9
        0x7f0b00e8
        0x7f0b00e7
        0x7f0b00e6
        0x7f0b00e5
        0x7f0b00e4
        0x7f0b00e3
        0x7f0b00e2
        0x7f0b00e1
        0x7f0b00e0
        0x7f0b00df
        0x7f0b00de
        0x7f0b00dd
        0x7f0b00dc
        0x7f0b00db
        0x7f0b00da
        0x7f0b00d9
        0x7f0b00d8
        0x7f0b00d7
        0x7f0b00d6
        0x7f0b00d5
        0x7f0b00d4
        0x7f0b00d3
        0x7f0b00d2
        0x7f0b00d1
        0x7f0b00d0
        0x7f0b00cf
        0x7f0b00ce
        0x7f0b00cd
        0x7f0b00cc
        0x7f0b00cb
        0x7f0b00ca
        0x7f0b00c9
        0x7f0b00c8
        0x7f0b00c7
        0x7f0b00c6
        0x7f0b00c5
        0x7f0b00c4
        0x7f0b00c3
        0x7f0b00c2
        0x7f0b00c1
        0x7f0b00c0
        0x7f0b00bf
        0x7f0b00be
        0x7f0b00bd
        0x7f0b00bc
        0x7f0b00bb
        0x7f0b00ba
        0x7f0b00b9
        0x7f0b00b8
        0x7f0b00b7
        0x7f0b00b6
        0x7f0b00b5
        0x7f0b00b4
        0x7f0b00b3
        0x7f0b00b2
        0x7f0b00b1
        0x7f0b00b0
        0x7f0b00af
        0x7f0b00ae
        0x7f0b00ad
        0x7f0b00ac
        0x7f0b00ab
        0x7f0b00aa
        0x7f0b00a9
        0x7f0b00a8
        0x7f0b00a7
        0x7f0b00a6
        0x7f0b00a5
        0x7f0b00a4
        0x7f0b00a3
        0x7f0b00a2
        0x7f0b00a1
        0x7f0b00a0
        0x7f0b009f
        0x7f0b009e
        0x7f0b009d
        0x7f0b009c
        0x7f0b009b
        0x7f0b009a
        0x7f0b0099
        0x7f0b0098
        0x7f0b0097
        0x7f0b0096
        0x7f0b0095
        0x7f0b0094
        0x7f0b0093
        0x7f0b0092
        0x7f0b0091
        0x7f0b0090
        0x7f0b008f
        0x7f0b008e
        0x7f0b008d
        0x7f0b008c
        0x7f0b008b
        0x7f0b008a
        0x7f0b0089
        0x7f0b0088
        0x7f0b0087
        0x7f0b0086
        0x7f0b0085
        0x7f0b0084
        0x7f0b0083
        0x7f0b0082
        0x7f0b0081
        0x7f0b0080
        0x7f0b007f
        0x7f0b007e
        0x7f0b007d
        0x7f0b007c
        0x7f0b007b
        0x7f0b007a
        0x7f0b0079
        0x7f0b0078
        0x7f0b0077
        0x7f0b0076
        0x7f0b0075
        0x7f0b0074
        0x7f0b0073
        0x7f0b0072
        0x7f0b0071
        0x7f0b0070
        0x7f0b006f
        0x7f0b006e
        0x7f0b006d
        0x7f0b006c
        0x7f0b006b
        0x7f0b006a
        0x7f0b0069
        0x7f0b0068
        0x7f0b0067
        0x7f0b0066
        0x7f0b0065
        0x7f0b0064
        0x7f0b0063
        0x7f0b0062
        0x7f0b0061
        0x7f0b0060
        0x7f0b005f
        0x7f0b005e
        0x7f0b005d
        0x7f0b005c
        0x7f0b005b
        0x7f0b005a
        0x7f0b0059
        0x7f0b0058
        0x7f0b0057
        0x7f0b0056
        0x7f0b0055
        0x7f0b0054
        0x7f0b0053
        0x7f0b0052
        0x7f0b0051
        0x7f0b0050
        0x7f0b004f
        0x7f0b004e
        0x7f0b004d
        0x7f0b004c
        0x7f0b004b
        0x7f0b004a
        0x7f0b0049
        0x7f0b0048
        0x7f0b0047
        0x7f0b0046
        0x7f0b0045
        0x7f0b0044
        0x7f0b0043
        0x7f0b0042
        0x7f0b0041
        0x7f0b0040
        0x7f0b003f
        0x7f0b003e
        0x7f0b003d
        0x7f0b003c
        0x7f0b003b
        0x7f0b003a
        0x7f0b0039
        0x7f0b0038
        0x7f0b0037
        0x7f0b0036
        0x7f0b0035
        0x7f0b0034
        0x7f0b0033
        0x7f0b0032
        0x7f0b0031
        0x7f0b0030
        0x7f0b002f
        0x7f0b002e
        0x7f0b002d
        0x7f0b002c
        0x7f0b002b
        0x7f0b002a
        0x7f0b0029
        0x7f0b0028
        0x7f0b0027
        0x7f0b0026
        0x7f0b0025
        0x7f0b0024
        0x7f0b0023
        0x7f0b0022
        0x7f0b0021
        0x7f0b0020
        0x7f0b001f
        0x7f0b001e
        0x7f0b001d
        0x7f0b001c
        0x7f0b001b
        0x7f0b001a
        0x7f0b0019
        0x7f0b0018
        0x7f0b0017
        0x7f0b0016
        0x7f0b0015
        0x7f0b0014
        0x7f0b0013
        0x7f0b017b
        0x7f0b017a
        0x7f0b0179
        0x7f0b0178
        0x7f0b0177
        0x7f0b0176
        0x7f0b0175
        0x7f0b0174
        0x7f0b0173
        0x7f0b0172
        0x7f0b0171
        0x7f0b0170
        0x7f0b016f
        0x7f0b016e
        0x7f0b016d
        0x7f0b016c
        0x7f0b016b
        0x7f0b016a
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    return v0
.end method

.method static synthetic access$102(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    .line 37
    sput-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 37
    sput-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 37
    sput-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 37
    sput-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isRightHandDriveVehicle:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->updateFrontRightDoorState(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/yfhome/presenter/CarPresenter;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->updateFrontLeftOoorState(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isPlgmfunccfgPresent:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAutoMode:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearDefogEnable:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/yftech/yfhome/presenter/CarPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearDefogEnable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsAnionEnable:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/yftech/yfhome/presenter/CarPresenter;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsAnionEnable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mGear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mGear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/yftech/yfhome/presenter/CarPresenter;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mPowerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACModeSetting:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 37
    sput-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACModeSetting:Z

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/vehicle/sdk/AirConditionManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAutoAir:Z

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/yfhome/presenter/CarPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isAirSingleZone:Z

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/yfhome/presenter/CarPresenter;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/yfhome/presenter/CarPresenter;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/CarPresenter;
    .locals 2

    .line 320
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mInstance:Lcom/yftech/yfhome/presenter/CarPresenter;

    if-nez v0, :cond_1

    .line 321
    const-class v0, Lcom/yftech/yfhome/presenter/CarPresenter;

    monitor-enter v0

    .line 322
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mInstance:Lcom/yftech/yfhome/presenter/CarPresenter;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/CarPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mInstance:Lcom/yftech/yfhome/presenter/CarPresenter;

    .line 325
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 327
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mInstance:Lcom/yftech/yfhome/presenter/CarPresenter;

    return-object p0
.end method

.method public static getmCurrentIndex()I
    .locals 1

    .line 643
    sget v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    return v0
.end method

.method public static synthetic lambda$testDoorStatus$0(Lcom/yftech/yfhome/presenter/CarPresenter;)V
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 655
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedFrontLeftDoor(Z)V

    return-void
.end method

.method public static synthetic lambda$updateFrontLeftOoorState$1(Lcom/yftech/yfhome/presenter/CarPresenter;)V
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 765
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedFrontLeftDoor(Z)V

    return-void
.end method

.method public static synthetic lambda$updateFrontRightDoorState$2(Lcom/yftech/yfhome/presenter/CarPresenter;)V
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 777
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedFrontRightDoor(Z)V

    return-void
.end method

.method private updateFrontLeftOoorState(Z)V
    .locals 1

    .line 760
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    if-eq v0, p1, :cond_0

    .line 761
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    .line 762
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 763
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$Fc2Wk0rw3PPmmqUEH2IKVeai-Mg;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$Fc2Wk0rw3PPmmqUEH2IKVeai-Mg;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateFrontRightDoorState(Z)V
    .locals 1

    .line 772
    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    if-eq v0, p1, :cond_0

    .line 773
    sput-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    .line 774
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 775
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$bqHihyUm3Rj3wLh7Vg1xLbEasG8;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$bqHihyUm3Rj3wLh7Vg1xLbEasG8;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized adjustCarBody(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 600
    :try_start_0
    sget p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    if-gtz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    goto :goto_0

    .line 603
    :cond_0
    sget p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    add-int/lit8 p1, p1, -0x5

    sput p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 606
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    sget v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    if-gt p1, v1, :cond_2

    .line 607
    sput v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    goto :goto_0

    .line 609
    :cond_2
    sget p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x5

    sput p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    .line 612
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    sget v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    if-ge p1, v1, :cond_3

    .line 613
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    goto :goto_1

    .line 614
    :cond_3
    sget p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    if-gez p1, :cond_4

    .line 615
    sput v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    .line 617
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_5

    .line 618
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->CAR_BODY_PICTURE_RESID:[I

    sget v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedCarBodyPicture(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_5
    monitor-exit p0

    return-void

    .line 598
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public getACMode()I
    .locals 3

    .line 382
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getACMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    return p0
.end method

.method public getAirConditionPowerState()I
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mAirConditionManager:Lcom/yftech/vehicle/sdk/AirConditionManager;

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getWindSpeed()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    move-result-object p0

    .line 513
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter$14;->$SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed:[I

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDrivingMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 3

    .line 351
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrivingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mDrivingMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method public getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mGear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0
.end method

.method public hasCarDoorOpen()Z
    .locals 2

    .line 628
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCarDoorOpen: \nmIsHoodOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsTrunkOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsFrontLeftDoorOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsFrontRightDoorOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsRearLeftDoorOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmIsRearRightDoorOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEngineOn()Z
    .locals 3

    .line 336
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mPowerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 337
    :goto_0
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEngineOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isFrontLeftDoorOpen()Z
    .locals 2

    .line 559
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFrontLeftDoorOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    return p0
.end method

.method public isFrontRightDoorOpen()Z
    .locals 2

    .line 569
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFrontRightDoorOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    return p0
.end method

.method public isHoodOpen()Z
    .locals 2

    .line 539
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHoodOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    return p0
.end method

.method public isRearLeftDoorOpen()Z
    .locals 2

    .line 579
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRearLeftDoorOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    return p0
.end method

.method public isRearRightDoorOpen()Z
    .locals 2

    .line 589
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRearRightDoorOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    return p0
.end method

.method public isTrunkOpen()Z
    .locals 2

    .line 549
    sget-object p0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTrunkOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-boolean p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    return p0
.end method

.method public resetCarBodyPicture()V
    .locals 2

    const/4 v0, 0x0

    .line 739
    sput v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCurrentIndex:I

    .line 741
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz v0, :cond_3

    .line 742
    iget-boolean v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->isGacLogoPresent:Z

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->hasCarDoorOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0193

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0169

    :goto_0
    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedCarBodyPicture(I)V

    goto :goto_1

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->hasCarDoorOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    const v1, 0x7f0b0194

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedCarBodyPicture(I)V

    .line 753
    :goto_1
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedFrontLeftDoor(Z)V

    .line 754
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedRearLeftDoor(Z)V

    .line 755
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedHood(Z)V

    .line 756
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    sget-boolean v0, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedMirror(Z)V

    goto :goto_2

    .line 748
    :cond_2
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    invoke-interface {p0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedCarBodyNoLogoReset()V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public setACMode(IZ)V
    .locals 3

    .line 392
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setACMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 395
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mACModeSetting:Z

    .line 396
    iput p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 399
    iput p2, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mACMode:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 452
    :pswitch_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$3;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$3;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 403
    :pswitch_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$2;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$2;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 4

    .line 363
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrivingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 371
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/utils/Utils;->setAvdcDialogShowFlag(Landroid/content/Context;I)V

    .line 373
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mCarDriveManager:Lcom/yftech/vehicle/sdk/CarDriveManager;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Z

    return-void
.end method

.method public setOnChangedCarListener(Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    return-void
.end method

.method public testDoorStatus(IZ)V
    .locals 3

    .line 647
    sget-object v0, Lcom/yftech/yfhome/presenter/CarPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testDoorStatus::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 717
    :pswitch_0
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    if-eq p1, p2, :cond_0

    .line 718
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsTrunkOpen:Z

    .line 719
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$8;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$8;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 703
    :pswitch_1
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    if-eq p1, p2, :cond_0

    .line 704
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsHoodOpen:Z

    .line 705
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 706
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$7;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$7;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 689
    :pswitch_2
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    if-eq p1, p2, :cond_0

    .line 690
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearRightDoorOpen:Z

    .line 691
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$6;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$6;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 675
    :pswitch_3
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    if-eq p1, p2, :cond_0

    .line 676
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsRearLeftDoorOpen:Z

    .line 677
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$5;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$5;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 661
    :pswitch_4
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    if-eq p1, p2, :cond_0

    .line 662
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontRightDoorOpen:Z

    .line 663
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 664
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/CarPresenter$4;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/CarPresenter$4;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 650
    :pswitch_5
    sget-boolean p1, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    if-eq p1, p2, :cond_0

    .line 651
    sput-boolean p2, Lcom/yftech/yfhome/presenter/CarPresenter;->mIsFrontLeftDoorOpen:Z

    .line 652
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mOnChangedCarListener:Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$cI9gjdp5VJlazwuc5wkfCXnqjnM;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$CarPresenter$cI9gjdp5VJlazwuc5wkfCXnqjnM;-><init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
