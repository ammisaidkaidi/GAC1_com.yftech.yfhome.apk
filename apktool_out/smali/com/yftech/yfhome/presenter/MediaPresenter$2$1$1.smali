.class Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

.field final synthetic val$finalSourceTemp:I


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;I)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iput p2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->val$finalSourceTemp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$800(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1000(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v1, v1, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1102(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 787
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->this$2:Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1;->this$1:Lcom/yftech/yfhome/presenter/MediaPresenter$2;

    iget-object v0, v0, Lcom/yftech/yfhome/presenter/MediaPresenter$2;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    iget p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$2$1$1;->val$finalSourceTemp:I

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaSource(I)V

    return-void
.end method
