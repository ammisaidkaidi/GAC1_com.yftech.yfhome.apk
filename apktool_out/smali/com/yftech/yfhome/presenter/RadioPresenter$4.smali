.class Lcom/yftech/yfhome/presenter/RadioPresenter$4;
.super Ljava/lang/Object;
.source "RadioPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/RadioPresenter;->initCurrentPlayInfo()V
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

    .line 822
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 825
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 826
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1400(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    move-result v1

    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1500()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 827
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initCurrentPlayInfo: info is NULL !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1408(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    .line 829
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_0
    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1602(Lcom/yftech/yfhome/presenter/RadioPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1802(Lcom/yftech/yfhome/presenter/RadioPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 836
    :goto_0
    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 837
    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 840
    :cond_2
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v5}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v5}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 841
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v5}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v5}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 842
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/yfhome/bean/DabChannelInfo;

    invoke-virtual {v4}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 843
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V

    const/4 v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 848
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$500(Lcom/yftech/yfhome/presenter/RadioPresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V

    .line 851
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 852
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1900(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 854
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    iput v1, v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    .line 856
    :cond_6
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget v0, v0, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    sget v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->SOURCE_OF_DAB:I

    if-ne v0, v1, :cond_7

    .line 857
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    iget v1, v1, Lcom/yftech/yfhome/presenter/RadioPresenter;->mRadioCurrType:I

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$700(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v3}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$2000(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangedRadioBand(ILjava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$4;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1900(Lcom/yftech/yfhome/presenter/RadioPresenter;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onChangeRadioPlayStatus(Z)V

    :cond_7
    return-void
.end method
