.class Lcom/yftech/yfhome/presenter/RadioPresenter$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/yftech/yfhome/presenter/RadioPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 570
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 579
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v4}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 587
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v4}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 588
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v3}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 589
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 595
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$500(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V

    goto :goto_3

    .line 576
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$200(Lcom/yftech/yfhome/presenter/RadioPresenter;)V

    goto :goto_3

    .line 572
    :cond_3
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CHECK_RADIO_MESSAGE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$100(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
