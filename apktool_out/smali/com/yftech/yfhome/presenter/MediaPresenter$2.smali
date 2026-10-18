.class Lcom/yftech/yfhome/presenter/MediaPresenter$2;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
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

    .line 724
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 727
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedMediaSource streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "carplay"

    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1200(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    invoke-direct {v1, p0, p3}, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter$2;Ljava/lang/String;)V

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const-string p0, "com.yftech.media.service"

    .line 792
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    .line 737
    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
