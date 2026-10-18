.class Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;
.super Ljava/lang/Object;
.source "CarlifeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->CarlifePlayControl(Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

.field final synthetic val$controlIndex:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iput-object p2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;->val$controlIndex:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.baidu.carlifevehicle"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "carlife_music_ctrl"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "carlife_music_control"

    .line 111
    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;->val$controlIndex:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
