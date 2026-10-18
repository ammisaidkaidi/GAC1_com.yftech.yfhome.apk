.class Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/MediaPresenter$3;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter$3;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 833
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 834
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 835
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$3;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$3;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    :cond_0
    return-void
.end method
