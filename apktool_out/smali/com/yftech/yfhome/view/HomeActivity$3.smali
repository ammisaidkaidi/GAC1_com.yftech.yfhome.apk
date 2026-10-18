.class Lcom/yftech/yfhome/view/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/view/HomeActivity;
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

    .line 592
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 595
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 596
    invoke-static {}, Lcom/yftech/yfhome/view/HomeActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnTouchListener action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 598
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$700(Lcom/yftech/yfhome/view/HomeActivity;)V

    return v2

    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x32

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 639
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1602(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 640
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {v0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1702(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 641
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1600(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1400(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 642
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1700(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1500(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt p1, p2, :cond_1

    if-ge p1, v0, :cond_3

    .line 644
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$700(Lcom/yftech/yfhome/view/HomeActivity;)V

    goto/16 :goto_0

    .line 648
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1602(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 649
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {v0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1702(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 650
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1600(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1400(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 651
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1700(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1500(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, p2, :cond_2

    if-le p1, v0, :cond_2

    .line 653
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$800(Lcom/yftech/yfhome/view/HomeActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1800(Lcom/yftech/yfhome/view/HomeActivity;I)V

    .line 655
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$700(Lcom/yftech/yfhome/view/HomeActivity;)V

    .line 656
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    goto :goto_0

    .line 635
    :pswitch_4
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1402(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 636
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1502(Lcom/yftech/yfhome/view/HomeActivity;I)I

    goto :goto_0

    :pswitch_5
    if-nez v0, :cond_3

    .line 616
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1, v3}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 617
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    :pswitch_6
    if-nez v0, :cond_3

    .line 610
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1, v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 611
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    :pswitch_7
    if-nez v0, :cond_3

    .line 622
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 623
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1200(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    :pswitch_8
    if-nez v0, :cond_3

    .line 628
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1, v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 629
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$1300(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0

    :pswitch_9
    if-nez v0, :cond_3

    .line 604
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$802(Lcom/yftech/yfhome/view/HomeActivity;I)I

    .line 605
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$3;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_3
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0700d2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
