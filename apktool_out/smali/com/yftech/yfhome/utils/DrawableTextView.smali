.class public Lcom/yftech/yfhome/utils/DrawableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "DrawableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;,
        Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;
    }
.end annotation


# instance fields
.field private final LEFT:I

.field private final RIGHT:I

.field private drawableBottom:Landroid/graphics/drawable/Drawable;

.field private drawableHeight:I

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

.field private drawableTop:Landroid/graphics/drawable/Drawable;

.field private drawableWidth:I

.field private leftListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;

.field private rightListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/yftech/yfhome/utils/DrawableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfhome/utils/DrawableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 19
    iput-object p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->LEFT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->RIGHT:I

    .line 35
    sget-object v0, Lcom/yftech/yfhome/R$styleable;->DrawableTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 53
    :pswitch_0
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableWidth:I

    goto :goto_1

    .line 47
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 41
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 44
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 56
    :pswitch_4
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableHeight:I

    goto :goto_1

    .line 50
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableWidth:I

    iget v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableHeight:I

    invoke-virtual {p1, p3, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yftech/yfhome/utils/DrawableTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->leftListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->leftListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;

    invoke-interface {v0, p0}, Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;->onLeftClick(Landroid/view/View;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->leftListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->rightListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;->onRightClick(Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DrawableTextView;->performClick()Z

    :goto_0
    return v1
.end method

.method public setOnDrawableLeftListener(Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->leftListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableLeftListener;

    return-void
.end method

.method public setOnDrawableRightListener(Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/yftech/yfhome/utils/DrawableTextView;->rightListener:Lcom/yftech/yfhome/utils/DrawableTextView$OnDrawableRightListener;

    return-void
.end method
