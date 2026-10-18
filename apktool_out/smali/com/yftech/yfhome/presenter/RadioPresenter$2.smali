.class Lcom/yftech/yfhome/presenter/RadioPresenter$2;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
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

    .line 606
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 642
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange focusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3

    .line 694
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 695
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFavorChange index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mRadio:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1200(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    .line 697
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1200(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqFavored(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    :cond_0
    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 620
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFreqChanage colorIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newChannel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", oldChannel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/lang/String;

    move-result-object p1

    .line 624
    iget-object p3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    iget-object p3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavorite()Z

    move-result p3

    invoke-interface {p1, p3}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    .line 627
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p1

    if-nez p1, :cond_1

    .line 628
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$800(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->getRdsCommonString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 630
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onFreqChanage: \u5f53\u524d\u663e\u793aRDS\u540d\u79f0\uff0c\u4e0d\u663e\u793a\u9891\u6bb5"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 635
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0, p2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$900(Lcom/yftech/yfhome/presenter/RadioPresenter;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    :cond_2
    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 664
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$900(Lcom/yftech/yfhome/presenter/RadioPresenter;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 665
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v0, p2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isFavorite(Lcom/yftech/car/media/radio/entity/DataOfRadio;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeFavoriteStatus(Z)V

    .line 668
    :cond_0
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isRadioDABPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget p1, p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 670
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1000(Lcom/yftech/yfhome/presenter/RadioPresenter;III)V

    goto :goto_0

    .line 672
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result p1

    .line 673
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget p2, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    invoke-static {p0, p2, p1, p3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1000(Lcom/yftech/yfhome/presenter/RadioPresenter;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayPause(Z)V
    .locals 3

    .line 681
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onPlayPause(Z)V

    .line 682
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM onPlayPause isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1102(Lcom/yftech/yfhome/presenter/RadioPresenter;Z)Z

    .line 684
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1100(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 685
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    iput v0, p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 687
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget p1, p1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_FMAM:I

    if-ne p1, v0, :cond_1

    .line 688
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1100(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeRadioPlayStatus(Z)V

    :cond_1
    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 3

    .line 704
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRdsCommonStringChange: mRdsPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$800(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$800(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 711
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getBand()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 713
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 714
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onRdsCommonStringChange(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 3

    .line 610
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStatusChange scanType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", operation:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 613
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object p0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeScanStatus(Z)V

    :cond_1
    return-void
.end method
