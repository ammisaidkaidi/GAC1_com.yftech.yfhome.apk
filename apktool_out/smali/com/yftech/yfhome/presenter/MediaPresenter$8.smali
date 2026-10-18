.class Lcom/yftech/yfhome/presenter/MediaPresenter$8;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1126
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$8;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$8;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$8;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$8;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayStatus(Z)V

    :cond_0
    return-void
.end method
