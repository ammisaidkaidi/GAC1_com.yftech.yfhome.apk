.class Lcom/yftech/yfhome/view/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/view/HomeActivity;->sendTrunkCmd()V
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

    .line 1285
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$9;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 1296
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$9;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method

.method public onSure()V
    .locals 3

    .line 1288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.yfmycar.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mycarscheme"

    const/16 v2, 0xa

    .line 1289
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1290
    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$9;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {v1}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1291
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$9;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$3900(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/DialogUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->dismiss()V

    return-void
.end method
