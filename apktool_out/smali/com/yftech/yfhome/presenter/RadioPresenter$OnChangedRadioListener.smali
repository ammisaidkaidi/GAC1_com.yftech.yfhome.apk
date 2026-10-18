.class public interface abstract Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;
.super Ljava/lang/Object;
.source "RadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/RadioPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangedRadioListener"
.end annotation


# virtual methods
.method public abstract onChangeFavoriteStatus(Z)V
.end method

.method public abstract onChangeRadioPlayStatus(Z)V
.end method

.method public abstract onChangeScanStatus(Z)V
.end method

.method public abstract onChangedDabStationLable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onChangedRadioFrequency(Ljava/lang/String;)V
.end method

.method public abstract onRdsCommonStringChange(Ljava/lang/String;)V
.end method

.method public abstract onSignalStatusChanged(Z)V
.end method
