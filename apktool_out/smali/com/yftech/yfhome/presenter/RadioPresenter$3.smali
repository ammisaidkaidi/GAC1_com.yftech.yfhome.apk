.class Lcom/yftech/yfhome/presenter/RadioPresenter$3;
.super Landroid/os/AsyncTask;
.source "RadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/RadioPresenter;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic lambda$doInBackground$0(Lcom/yftech/yfhome/presenter/RadioPresenter$3;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$600(Lcom/yftech/yfhome/presenter/RadioPresenter;)Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->isSignalPoor()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/presenter/RadioPresenter$OnChangedRadioListener;->onSignalStatusChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 758
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabEnsemble()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object p1

    if-nez p1, :cond_0

    .line 760
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshData,dabEnsembles is null ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :cond_0
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshData,dabEnsembles length:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-virtual {v1, p1, v0}, Lcom/yftech/yfhome/presenter/RadioPresenter;->convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;)V

    .line 766
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 767
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "refreshData,ChannelInfoList is empty ----"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 773
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 777
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataList only 1 ======="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v2, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    invoke-direct {v2, v1}, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/yfhome/bean/DabChannelInfo;)V

    invoke-interface {p1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    new-instance v2, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    invoke-direct {v2, v1}, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/yfhome/bean/DabChannelInfo;)V

    invoke-interface {p1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 780
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 781
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataList only 2-----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v2, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    invoke-direct {v2, v1}, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/yfhome/bean/DabChannelInfo;)V

    invoke-interface {p1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 783
    new-instance v2, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;

    invoke-direct {v2, v1}, Lcom/yftech/yfhome/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/yfhome/bean/DabChannelInfo;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 785
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 786
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataList only 3 !!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 792
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 794
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 795
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x2715

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 796
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$1300(Lcom/yftech/yfhome/presenter/RadioPresenter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$3$zy9u7H-_OKcw4inebDZdiJrfTAo;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/presenter/-$$Lambda$RadioPresenter$3$zy9u7H-_OKcw4inebDZdiJrfTAo;-><init>(Lcom/yftech/yfhome/presenter/RadioPresenter$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method
