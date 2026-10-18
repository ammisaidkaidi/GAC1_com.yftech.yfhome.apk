.class public Lcom/yftech/yfhome/guide/GuideViewOpter;
.super Ljava/lang/Object;
.source "GuideViewOpter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEEP_NO_TIP:Ljava/lang/String; = "guide_keep_no_tip"

.field private static final TAG:Ljava/lang/String; = "GuideViewOpter"

.field private static mOpter:Lcom/yftech/yfhome/guide/GuideViewOpter;


# instance fields
.field private btnFinish:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private imageSwitcher:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mGuideResIds:[I

.field private mGuideResIndex:I

.field private mTvGuideTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private tvCool:Landroid/widget/TextView;

.field private tvHeat:Landroid/widget/TextView;

.field private windowManager:Lcom/yftech/yfhome/guide/GuideViewWindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    .line 35
    iput-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    .line 36
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    const v1, 0x7f0b000f

    aput v1, p1, v0

    .line 37
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    const/4 v0, 0x1

    const v1, 0x7f0b0010

    aput v1, p1, v0

    .line 38
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    const/4 v0, 0x2

    const v1, 0x7f0b0011

    aput v1, p1, v0

    .line 39
    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    const/4 p1, 0x3

    const v0, 0x7f0b0012

    aput v0, p0, p1

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/guide/GuideViewOpter;
    .locals 2

    .line 43
    sget-object v0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mOpter:Lcom/yftech/yfhome/guide/GuideViewOpter;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/yftech/yfhome/guide/GuideViewOpter;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/guide/GuideViewOpter;->mOpter:Lcom/yftech/yfhome/guide/GuideViewOpter;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/yftech/yfhome/guide/GuideViewOpter;

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/guide/GuideViewOpter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/guide/GuideViewOpter;->mOpter:Lcom/yftech/yfhome/guide/GuideViewOpter;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mOpter:Lcom/yftech/yfhome/guide/GuideViewOpter;

    return-object p0
.end method

.method private makeBootWarnView()V
    .locals 3

    const-string v0, "GuideViewOpter"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeToastView, mView is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v2, 0x7f070100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v2, 0x7f070101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvHeat:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvCool:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->imageSwitcher:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnNext:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->imageSwitcher:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    iget v2, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/guide/GuideViewOpter;->setGuideTipsTextViewShow(I)V

    .line 79
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->windowManager:Lcom/yftech/yfhome/guide/GuideViewWindowManager;

    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->add(Landroid/view/View;)V

    const-string p0, "GuideViewOpter"

    const-string v0, "makeBootWarnView: add View !!!"

    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setGuideTipsTextViewShow(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvHeat:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvCool:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvHeat:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvHeat:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->tvCool:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    move v0, v2

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 135
    iget-object v3, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mTvGuideTips:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    .line 137
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 140
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setGuideViewNotTip()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    .line 116
    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->windowManager:Lcom/yftech/yfhome/guide/GuideViewWindowManager;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yftech/yfhome/guide/GuideViewWindowManager;->remove(Landroid/view/View;)V

    .line 120
    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "guide_keep_no_tip"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/yfhome/guide/GuideViewOpter;->setGuideViewNotTip()V

    goto :goto_0

    .line 98
    :pswitch_1
    iget p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    .line 99
    iget p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 100
    iget p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/guide/GuideViewOpter;->setGuideTipsTextViewShow(I)V

    .line 101
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->imageSwitcher:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIds:[I

    iget v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mGuideResIndex:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnFinish:Landroid/widget/Button;

    const v0, 0x7f060073

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 105
    iget-object p0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->btnNext:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/yftech/yfhome/guide/GuideViewOpter;->setGuideViewNotTip()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f070049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public opt()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->windowManager:Lcom/yftech/yfhome/guide/GuideViewWindowManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/yftech/yfhome/guide/GuideViewWindowManager;

    iget-object v1, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/yfhome/guide/GuideViewWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/yfhome/guide/GuideViewOpter;->windowManager:Lcom/yftech/yfhome/guide/GuideViewWindowManager;

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/yftech/yfhome/guide/GuideViewOpter;->makeBootWarnView()V

    return-void
.end method
