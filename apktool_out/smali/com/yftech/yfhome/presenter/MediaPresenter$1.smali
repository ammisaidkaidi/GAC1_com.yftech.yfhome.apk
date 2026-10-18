.class Lcom/yftech/yfhome/presenter/MediaPresenter$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
