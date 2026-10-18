.class Lcom/yftech/yfhome/presenter/MediaPresenter$3;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
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

    .line 796
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 799
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothAvrcpConnectStateChanged mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 804
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 807
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p1

    if-nez p1, :cond_1

    .line 810
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    goto :goto_1

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string v0, "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 815
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    invoke-static {p1}, Lcom/yftech/yfhome/utils/Utils;->getAudioFocusByClientId(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 821
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->play(I)V

    .line 826
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 827
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 828
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 829
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1200(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;

    invoke-direct {p2, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter$3;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 842
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 843
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onBluetoothMediaPlaybackStateChanged(ZII)V
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 853
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-eq v1, v0, :cond_0

    if-lez p3, :cond_0

    .line 859
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 861
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-eq v1, v0, :cond_1

    return-void

    :cond_1
    :goto_0
    if-lez p2, :cond_3

    if-gtz p3, :cond_2

    goto :goto_1

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    int-to-float p3, p3

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr p3, v1

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v0, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    goto :goto_2

    .line 868
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 872
    :goto_2
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p2, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1102(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 875
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

    const-string p3, "com.yftech.service.bluetooth.profiles.AvrcpManager"

    invoke-virtual {p1, p2, p3}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayStatus(Z)V

    .line 878
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaProgress(I)V

    :cond_4
    return-void
.end method

.method public onBluetoothMediaTrackInfoChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    .line 884
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothMediaTrackInfoChanged mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mediaMetadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 886
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 887
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 889
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 890
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 891
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
