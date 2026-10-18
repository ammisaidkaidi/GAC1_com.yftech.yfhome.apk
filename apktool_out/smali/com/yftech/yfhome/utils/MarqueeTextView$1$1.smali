.class Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/utils/MarqueeTextView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/utils/MarqueeTextView$1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    iget-object v0, v0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    iget-object v1, v1, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v1}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$200(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$202(Lcom/yftech/yfhome/utils/MarqueeTextView;F)F

    .line 108
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    iget-object v0, v0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->invalidate()V

    .line 109
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    iget-object v0, v0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$300(Lcom/yftech/yfhome/utils/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;->this$1:Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
