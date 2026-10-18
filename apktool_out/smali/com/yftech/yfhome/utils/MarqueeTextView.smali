.class public Lcom/yftech/yfhome/utils/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field static linearGradient:Landroid/graphics/LinearGradient;


# instance fields
.field private mCoordinateX:F

.field private mHandler:Landroid/os/Handler;

.field private mStopMarquee:Z

.field private mText:Ljava/lang/String;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance p1, Lcom/yftech/yfhome/utils/MarqueeTextView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/yftech/yfhome/utils/MarqueeTextView$1;-><init>(Lcom/yftech/yfhome/utils/MarqueeTextView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getWidth()I

    move-result p0

    int-to-float v3, p0

    const/4 p0, 0x4

    new-array v5, p0, [I

    fill-array-data v5, :array_0

    new-array v6, p0, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object p1, Lcom/yftech/yfhome/utils/MarqueeTextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-void

    :array_0
    .array-data 4
        0xffffff
        -0x1
        -0x1
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/yfhome/utils/MarqueeTextView;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mTextWidth:F

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/yfhome/utils/MarqueeTextView;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfhome/utils/MarqueeTextView;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mCoordinateX:F

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/yfhome/utils/MarqueeTextView;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mCoordinateX:F

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/yfhome/utils/MarqueeTextView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mStopMarquee:Z

    return p0
.end method


# virtual methods
.method public isFocused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mStopMarquee:Z

    .line 57
    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mTextWidth:F

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mStopMarquee:Z

    .line 66
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mTextWidth:F

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mCoordinateX:F

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mCoordinateX:F

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 40
    iput-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mCoordinateX:F

    .line 42
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    iput p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mTextWidth:F

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mTextWidth:F

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/MarqueeTextView;->invalidate()V

    .line 48
    iget-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
