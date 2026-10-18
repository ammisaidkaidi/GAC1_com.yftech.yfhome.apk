.class Lcom/yftech/yfhome/utils/MarqueeTextView$1;
.super Landroid/os/Handler;
.source "MarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/utils/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/utils/MarqueeTextView;Landroid/os/Looper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$000(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-virtual {v1}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 90
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$100(Lcom/yftech/yfhome/utils/MarqueeTextView;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$000(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    add-float/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v1}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$200(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0, v2}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$202(Lcom/yftech/yfhome/utils/MarqueeTextView;F)F

    .line 98
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->invalidate()V

    .line 99
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$300(Lcom/yftech/yfhome/utils/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x7d0

    .line 100
    invoke-virtual {p0, v1, v2, v3}, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$200(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$100(Lcom/yftech/yfhome/utils/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/utils/MarqueeTextView$1$1;-><init>(Lcom/yftech/yfhome/utils/MarqueeTextView$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    iget-object v2, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v2}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$200(Lcom/yftech/yfhome/utils/MarqueeTextView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$202(Lcom/yftech/yfhome/utils/MarqueeTextView;F)F

    .line 116
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->invalidate()V

    .line 117
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->this$0:Lcom/yftech/yfhome/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->access$300(Lcom/yftech/yfhome/utils/MarqueeTextView;)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x1e

    .line 118
    invoke-virtual {p0, v1, v2, v3}, Lcom/yftech/yfhome/utils/MarqueeTextView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
