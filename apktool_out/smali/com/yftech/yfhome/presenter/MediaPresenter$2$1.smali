.class Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/MediaPresenter$2;->onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

.field final synthetic val$clientId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter$2;Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iput-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->val$clientId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 741
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->val$clientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$200(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 744
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 745
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v3

    if-lez v3, :cond_4

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 746
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result v4

    if-lez v4, :cond_4

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v4, v4, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 747
    invoke-virtual {v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarlifeConnect()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v4, v4, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 748
    invoke-virtual {v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isCarplayConnect()Z

    move-result v4

    if-nez v4, :cond_5

    .line 751
    :cond_4
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "the source is not available!!!!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 756
    :cond_5
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v4, v4, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v4, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 759
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    move-result-object v0

    const-string v4, "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

    iget-object v5, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->val$clientId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    .line 762
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v4, v4, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v4

    if-eq v1, v4, :cond_6

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v4, v4, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 763
    invoke-static {v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 764
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is disconnect, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 767
    :cond_6
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    .line 768
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$602(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 770
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-ne v3, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-boolean v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter;->isMusicSourceChangedByUser:Z

    if-eqz v1, :cond_8

    .line 771
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iput-boolean v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter;->isMusicSourceChangedByUser:Z

    return-void

    .line 777
    :cond_8
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-ne v3, v1, :cond_a

    :cond_9
    const/16 v2, 0x64

    .line 781
    :cond_a
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1200(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;

    invoke-direct {v3, p0, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;-><init>(Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;I)V

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method
