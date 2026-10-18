.class Lcom/yftech/yfhome/view/HomeActivity$8;
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


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method

.method public onSure()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentPhoneLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->disconnectPhoneLink(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    const-string v1, "hicar"

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->connectPhoneLink(Ljava/lang/String;)V

    .line 1184
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$8;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method
