.class Lcom/yftech/yfhome/presenter/MediaPresenter$4;
.super Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/MediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePlayMode(I)V
    .locals 3

    .line 960
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangePlayMode:mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1702(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 963
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangeCycleMode(I)V

    :cond_1
    return-void
.end method

.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 3

    .line 900
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangePlayMusic musicFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 902
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1502(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$602(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 906
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$600(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayError(Z)V

    const/4 p1, -0x1

    .line 910
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1600(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 913
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1502(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 916
    :cond_2
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    if-ne v2, v1, :cond_4

    move p1, v2

    .line 922
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 923
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    .line 926
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaProgress(I)V

    :cond_5
    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 3

    .line 950
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangePlaying isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1102(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 954
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayStatus(Z)V

    :cond_1
    return-void
.end method

.method public onChangeProgress(I)V
    .locals 4

    .line 935
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 936
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1600(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/music/CarMusicManager;->getCurrentPlayDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 940
    :cond_1
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    int-to-float p1, p1

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v3

    long-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    goto :goto_1

    .line 938
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 944
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaProgress(I)V

    :cond_3
    return-void
.end method

.method public onPlayError(I)Z
    .locals 3

    .line 969
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayError status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$602(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 971
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayError(Z)V

    .line 974
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;->onPlayError(I)Z

    move-result p0

    return p0
.end method
