.class Lcom/yftech/yfhome/view/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/view/HomeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/view/HomeActivity;

.field final synthetic val$phoneLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iput-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->val$phoneLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method

.method public onSure()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->val$phoneLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->disconnectPhoneLink(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$4000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->openMediaApp(Landroid/content/Context;I)V

    .line 1142
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$7;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method
