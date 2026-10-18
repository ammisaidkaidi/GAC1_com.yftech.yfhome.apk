.class Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;
.super Ljava/lang/Object;
.source "CarplayControl.java"

# interfaces
.implements Lcom/autochips/carplay/CarplayManager$CarplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(Lcom/autochips/carplay/CarplayAppState;)V
    .locals 2

    .line 317
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamStateChanged carplayAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayAppState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioInfo(IILcom/autochips/carplay/CarplayAudioInfo;)V
    .locals 2

    .line 356
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/autochips/carplay/CarplayAudioInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCallStateChanged(Lcom/autochips/carplay/CarplayCall;)V
    .locals 2

    .line 351
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayCall;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionStateChanged(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 3

    .line 295
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChanged carplayDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/util/List;)Ljava/util/List;

    .line 298
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/carplay/CarplayDevice;

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$302(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 300
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/autochips/carplay/CarplayManager;->getConnectionState(Lcom/autochips/carplay/CarplayDevice;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1002(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0, p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1002(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    .line 303
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p2, p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$302(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 305
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1000(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayConnectChanged(I)V

    :cond_1
    return-void
.end method

.method public onDeviceBluetoothID(Ljava/lang/String;)V
    .locals 2

    .line 361
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceBluetoothID s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnableStateChanged(II)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackStatusChanged(Lcom/autochips/carplay/CarplayDevice;Lcom/autochips/carplay/PlaybackStatusInfo;)V
    .locals 4

    .line 255
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStatusChanged device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pbInfo:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayManager;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/util/List;)Ljava/util/List;

    .line 257
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 258
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/carplay/CarplayDevice;

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$302(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 259
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isPlaybackStatusValid()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackStatus()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v1, v0

    :cond_0
    invoke-static {p1, v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$402(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Z)Z

    .line 261
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$400(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayPlayingChanged(Z)V

    .line 265
    :cond_1
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackInfo()I

    move-result p1

    and-int/2addr p1, v0

    const/4 v1, 0x4

    if-nez p1, :cond_2

    .line 266
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackInfo()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 268
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$602(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$702(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 271
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$600(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$700(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isTrackMsOffsetValid()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 276
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p2}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 278
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackLen()I

    move-result v0

    invoke-static {p2, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$802(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    .line 279
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackPos()I

    move-result p1

    invoke-static {p2, p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$902(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    .line 280
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 281
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$900(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onCarplayProgressChanged(I)V

    :cond_4
    return-void
.end method

.method public onRequestAccessoryUI(I)V
    .locals 2

    .line 346
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestAccessoryUI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResourceStateChanged(Lcom/autochips/carplay/CarplayResourceState;)V
    .locals 3

    .line 322
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceStateChanged carplayResourceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1100(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 330
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onResourceStateChanged(Z)V

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p0, v1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 336
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 337
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$500(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;->onResourceStateChanged(Z)V

    .line 340
    :cond_3
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$1;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p0, v0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1102(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;I)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onStreamStateChanged(III)V
    .locals 2

    .line 312
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
