.class Lcom/yftech/yfhome/presenter/RadioPresenter$6;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "RadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/RadioPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnsembleListChange(I)V
    .locals 3

    .line 1027
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    .line 1028
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnsembleListChange type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$2100(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    return-void
.end method

.method public onEpgDataChange()V
    .locals 0

    .line 1021
    invoke-super {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEpgDataChange()V

    return-void
.end method

.method public onFavorChange(I)V
    .locals 1

    .line 1034
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onFavorChange(I)V

    .line 1035
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1036
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$500(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavoredDab(I)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    :cond_0
    return-void
.end method

.method public onPlayPause(Z)V
    .locals 3

    .line 983
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V

    .line 984
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAB onPlayPause isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 986
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    iput v0, p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 988
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 989
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$2100(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    .line 991
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x2714

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 3

    .line 996
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 997
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadioCurrType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget v2, v2, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  onPlayStatusChange isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget p1, p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne p1, v0, :cond_0

    .line 999
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1000(Lcom/yftech/yfhome/presenter/RadioPresenter;III)V

    .line 1000
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x2715

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V
    .locals 3

    .line 1006
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V

    if-eqz p1, :cond_0

    .line 1013
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanStatusChange newDabScan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",oldDabScan: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$2100(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    :cond_0
    return-void
.end method

.method public onVersionNumbers(Ljava/lang/String;)V
    .locals 2

    .line 1042
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onVersionNumbers(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVersionNumbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
