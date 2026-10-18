.class Lcom/yftech/yfhome/view/HomeActivity$12;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/view/HomeActivity;->onChangedMediaSource(I)V
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

    .line 1638
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1641
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1642
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$500(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 1643
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentSinger()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {v0, p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$600(Lcom/yftech/yfhome/view/HomeActivity;Z)V

    goto :goto_2

    .line 1645
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/yftech/yfhome/view/HomeActivity;->access$4200(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4300(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 1647
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$12;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$4400(Lcom/yftech/yfhome/view/HomeActivity;I)V

    :goto_2
    return-void
.end method
