.class Lcom/yftech/yfhome/view/HomeActivity$5;
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

    .line 778
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 781
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCarplayCertificate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getCurrentMediaSource()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 782
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v3, 0x7f06009a

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-nez p2, :cond_0

    .line 806
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 807
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 808
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v4, :cond_3

    .line 810
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    .line 786
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 787
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3600(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 788
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_3

    .line 790
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3600(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    .line 796
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3700(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 797
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3500(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 798
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    .line 800
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p1}, Lcom/yftech/yfhome/view/HomeActivity;->access$3700(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 801
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$5;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$200(Lcom/yftech/yfhome/view/HomeActivity;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->sendCarPlayTouchEvent(I)V

    :cond_3
    :goto_0
    return v4

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f070089
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
