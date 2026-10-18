.class Lcom/yftech/yfhome/view/HomeActivity$4;
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

    .line 714
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 p1, 0x1

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 719
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 741
    :pswitch_0
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2400(Lcom/yftech/yfhome/view/HomeActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    return p1

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v4}, Lcom/yftech/yfhome/view/HomeActivity;->access$2100(Lcom/yftech/yfhome/view/HomeActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v3, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v3}, Lcom/yftech/yfhome/view/HomeActivity;->access$2200(Lcom/yftech/yfhome/view/HomeActivity;)F

    move-result v3

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v4

    if-gez p2, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-static {v2, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1902(Lcom/yftech/yfhome/view/HomeActivity;Z)Z

    .line 747
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2300(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/CarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/yfhome/presenter/CarPresenter;->hasCarDoorOpen()Z

    move-result p2

    if-nez p2, :cond_3

    .line 750
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2700(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3000(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3200(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3300(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    cmpl-float p2, v1, p2

    if-lez p2, :cond_2

    .line 758
    iget-object v2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3400(Lcom/yftech/yfhome/view/HomeActivity;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 759
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2300(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/CarPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/yfhome/presenter/CarPresenter;->adjustCarBody(I)V

    goto/16 :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 760
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$3400(Lcom/yftech/yfhome/view/HomeActivity;)F

    move-result p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_3

    .line 761
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2300(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/CarPresenter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->adjustCarBody(I)V

    goto/16 :goto_1

    .line 731
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$1900(Lcom/yftech/yfhome/view/HomeActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2000(Lcom/yftech/yfhome/view/HomeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long p2, v2, v4

    if-gez p2, :cond_3

    .line 733
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCanOpenMyCar()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 734
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2600(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/utils/MySoundPool;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/yfhome/utils/MySoundPool;->playInterfaceSoundEffect()V

    .line 735
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.yftech.yfmycar.main"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {v0}, Lcom/yftech/yfhome/view/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/yftech/yfhome/utils/Utils;->startAppByAction(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 721
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0, p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$1902(Lcom/yftech/yfhome/view/HomeActivity;Z)Z

    .line 722
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yftech/yfhome/view/HomeActivity;->access$2002(Lcom/yftech/yfhome/view/HomeActivity;J)J

    .line 723
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2102(Lcom/yftech/yfhome/view/HomeActivity;F)F

    .line 724
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2202(Lcom/yftech/yfhome/view/HomeActivity;F)F

    .line 726
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2300(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/CarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/yfhome/presenter/CarPresenter;->hasCarDoorOpen()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->getmCurrentIndex()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2400(Lcom/yftech/yfhome/view/HomeActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 727
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$2500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f0b0169

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$4;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0, v1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3402(Lcom/yftech/yfhome/view/HomeActivity;F)F

    :cond_4
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
