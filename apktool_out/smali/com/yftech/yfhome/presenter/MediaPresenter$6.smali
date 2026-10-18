.class Lcom/yftech/yfhome/presenter/MediaPresenter$6;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
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

    .line 1006
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 1014
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedStatusChanged status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 1015
    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, "carlife"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1802(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 1017
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, "carplay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1902(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 1019
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1020
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1800(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->CONNECTED:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    .line 1021
    :goto_0
    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    goto :goto_0

    .line 1020
    :goto_1
    invoke-interface {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedCarlifeConnectStatus(I)V

    .line 1022
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedCarplayConnectStatus(I)V

    .line 1025
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 1026
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1800(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1029
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 1030
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    :cond_4
    return-void
.end method

.method public onDeviceChanged(Lcom/yftech/car/phonelink/PhoneLink;)V
    .locals 2

    .line 1009
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceChanged phoneLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLink;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHicarReConnectStateChange(ZLjava/lang/String;)V
    .locals 3

    .line 1037
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHicarReConnectStateChange: reConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$6;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->mHiCarReConnected:Z

    return-void
.end method

.method public onShowHuaWeiConnectedDialog()V
    .locals 1

    .line 1043
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onShowHuaWeiConnectedDialog"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVRStatusChanged(I)V
    .locals 0

    .line 1048
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onVRStatusChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
