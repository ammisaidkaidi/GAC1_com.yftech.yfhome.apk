.class Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;
.super Landroid/os/Handler;
.source "CarplayControl.java"


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
.method constructor <init>(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;Landroid/os/Looper;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 368
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CHECK_CARPLAY_SERVICE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1200(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl$2;->this$0:Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;->access$1300(Lcom/yftech/yfhome/presenter/Carplay/CarplayControl;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
