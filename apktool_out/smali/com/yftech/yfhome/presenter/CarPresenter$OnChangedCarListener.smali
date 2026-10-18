.class public interface abstract Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;
.super Ljava/lang/Object;
.source "CarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/CarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangedCarListener"
.end annotation


# virtual methods
.method public abstract onChangedACMode(I)V
.end method

.method public abstract onChangedCarBodyNoLogoReset()V
.end method

.method public abstract onChangedCarBodyPicture(I)V
.end method

.method public abstract onChangedDrivingMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
.end method

.method public abstract onChangedFrontLeftDoor(Z)V
.end method

.method public abstract onChangedFrontRightDoor(Z)V
.end method

.method public abstract onChangedHood(Z)V
.end method

.method public abstract onChangedMirror(Z)V
.end method

.method public abstract onChangedPowerMode(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
.end method

.method public abstract onChangedRearLeftDoor(Z)V
.end method

.method public abstract onChangedRearRightDoor(Z)V
.end method

.method public abstract onChangedTrunk(Z)V
.end method

.method public abstract onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
.end method

.method public abstract onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
.end method
