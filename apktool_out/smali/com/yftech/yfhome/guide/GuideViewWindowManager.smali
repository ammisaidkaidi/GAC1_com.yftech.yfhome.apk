.class public Lcom/yftech/yfhome/guide/GuideViewWindowManager;
.super Ljava/lang/Object;
.source "GuideViewWindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideViewWindowManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 20
    invoke-direct {p0}, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->initLayoutParams()V

    return-void
.end method

.method private initLayoutParams()V
    .locals 3

    .line 25
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 27
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x805

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 31
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 33
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
