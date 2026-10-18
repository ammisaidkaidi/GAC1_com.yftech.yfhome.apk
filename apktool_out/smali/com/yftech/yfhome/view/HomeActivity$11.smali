.class Lcom/yftech/yfhome/view/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/view/HomeActivity;->showMediaMessageViewDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$11;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1443
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$11;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$300(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$11;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    .line 1444
    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$11;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$300(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1445
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$11;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$600(Lcom/yftech/yfhome/view/HomeActivity;Z)V

    :cond_0
    return-void
.end method
