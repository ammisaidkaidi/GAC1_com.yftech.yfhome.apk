.class Lcom/yftech/yfhome/view/HomeActivity$1;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/view/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;Landroid/os/Looper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yftech/yfhome/view/HomeActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleMessage msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$100(Lcom/yftech/yfhome/view/HomeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$100(Lcom/yftech/yfhome/view/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->getCurrentMediaSource()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1, v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$102(Lcom/yftech/yfhome/view/HomeActivity;Z)Z

    .line 179
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/view/HomeActivity;->onChangedMediaProgress(I)V

    goto/16 :goto_2

    .line 182
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x28

    if-ne p1, v0, :cond_9

    .line 184
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$300(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result p1

    if-eq p1, v1, :cond_2

    return-void

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p1}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 191
    invoke-static {p1}, Lcom/yftech/yfhome/utils/Utils;->getAudioFocusByClientId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    goto/16 :goto_2

    .line 195
    :cond_3
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$400(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/RadioPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->play()V

    goto/16 :goto_2

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getBTMusicConnectStatus()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 199
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    goto :goto_2

    .line 203
    :cond_5
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v1

    if-ne p1, v0, :cond_7

    move p1, v2

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentMediaSource(I)V

    .line 209
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-nez p1, :cond_8

    .line 211
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentTitle(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentSinger(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentTitle(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->setCurrentSinger(Ljava/lang/String;)V

    .line 218
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$500(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 219
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$1;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$600(Lcom/yftech/yfhome/view/HomeActivity;Z)V

    :cond_9
    :goto_2
    return-void
.end method
