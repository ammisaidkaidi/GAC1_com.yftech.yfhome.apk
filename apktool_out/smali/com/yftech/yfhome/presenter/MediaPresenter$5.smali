.class Lcom/yftech/yfhome/presenter/MediaPresenter$5;
.super Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;
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

    .line 978
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStatusChange(IZ)V
    .locals 3

    .line 982
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanStatusChange usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isScanner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedUSBScan(IZ)V

    :cond_0
    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 3

    .line 991
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbStatusChange usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isUsbExists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedUSBStatus(IZ)V

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    .line 997
    iget-object p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 998
    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 999
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$102(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 1000
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    :cond_2
    return-void
.end method
