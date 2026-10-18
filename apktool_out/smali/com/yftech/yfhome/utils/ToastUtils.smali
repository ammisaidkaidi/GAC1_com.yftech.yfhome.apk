.class public Lcom/yftech/yfhome/utils/ToastUtils;
.super Landroid/widget/Toast;
.source "ToastUtils.java"


# static fields
.field private static final TYPE_IMG_HIDE:I = 0x0

.field private static final TYPE_IMG_SHOW:I = 0x1

.field private static mToastImg:Landroid/widget/ImageView;

.field private static mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 48
    sget-object v0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {v0}, Lcom/yftech/yfhome/utils/ToastUtils;->cancel()V

    :cond_0
    return-void
.end method

.method private static initToast(Landroid/content/Context;ILjava/lang/CharSequence;Z)V
    .locals 4

    .line 113
    :try_start_0
    invoke-static {}, Lcom/yftech/yfhome/utils/ToastUtils;->cancelToast()V

    .line 114
    new-instance v0, Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    const-string v0, "layout_inflater"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0a002a

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0700bd

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 122
    sget-object p3, Lcom/yftech/yfhome/utils/-$$Lambda$ToastUtils$pCAL7Nc24at_r2n9-RrwqJrJRvQ;->INSTANCE:Lcom/yftech/yfhome/utils/-$$Lambda$ToastUtils$pCAL7Nc24at_r2n9-RrwqJrJRvQ;

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p3, 0x7f0700f9

    .line 125
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sput-object p3, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const p3, 0x7f0700fa

    .line 127
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p2, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->setView(Landroid/view/View;)V

    .line 133
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    or-int/lit8 p1, p1, 0x7

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/yftech/yfhome/utils/ToastUtils;->setGravity(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static initToast(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 4

    .line 78
    :try_start_0
    invoke-static {}, Lcom/yftech/yfhome/utils/ToastUtils;->cancelToast()V

    .line 79
    new-instance v0, Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcom/yftech/yfhome/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    const-string v0, "layout_inflater"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0a002a

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0700bd

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 87
    sget-object p2, Lcom/yftech/yfhome/utils/-$$Lambda$ToastUtils$_diHqU2z6JX7F2s-zFGRzU701Cg;->INSTANCE:Lcom/yftech/yfhome/utils/-$$Lambda$ToastUtils$_diHqU2z6JX7F2s-zFGRzU701Cg;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7f0700f9

    .line 91
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sput-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const p2, 0x7f0700fa

    .line 93
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 94
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget-object p1, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->setView(Landroid/view/View;)V

    .line 99
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    const/16 p1, 0x37

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/yftech/yfhome/utils/ToastUtils;->setGravity(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$initToast$0(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-static {}, Lcom/yftech/yfhome/utils/ToastUtils;->cancelToast()V

    return-void
.end method

.method static synthetic lambda$initToast$1(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-static {}, Lcom/yftech/yfhome/utils/ToastUtils;->cancelToast()V

    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-static {p0, p1, v0, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, p1, p2, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
    .locals 0

    .line 262
    invoke-static {p0, p1, p2, p3}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static showText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, p1, v0, p2}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 184
    invoke-static/range {v0 .. v5}, Lcom/yftech/yfhome/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;IIIZ)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;IIIZ)V
    .locals 0

    .line 188
    invoke-static {p0, p2, p1, p5}, Lcom/yftech/yfhome/utils/ToastUtils;->initToast(Landroid/content/Context;ILjava/lang/CharSequence;Z)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 191
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p2, p1}, Lcom/yftech/yfhome/utils/ToastUtils;->setDuration(I)V

    goto :goto_0

    .line 193
    :cond_0
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p2, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->setDuration(I)V

    :goto_0
    if-nez p4, :cond_1

    .line 197
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_1
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const-string p2, "rotation"

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    .line 203
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 p1, 0x3e8

    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 208
    :goto_1
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/ToastUtils;->show()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p4}, Lcom/yftech/yfhome/utils/ToastUtils;->initToast(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 155
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p2, p1}, Lcom/yftech/yfhome/utils/ToastUtils;->setDuration(I)V

    goto :goto_0

    .line 157
    :cond_0
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p2, p0}, Lcom/yftech/yfhome/utils/ToastUtils;->setDuration(I)V

    :goto_0
    if-nez p3, :cond_1

    .line 161
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_1
    sget-object p2, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastImg:Landroid/widget/ImageView;

    const-string p2, "rotation"

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 166
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    .line 167
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 p1, 0x3e8

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    :goto_1
    sget-object p0, Lcom/yftech/yfhome/utils/ToastUtils;->mToastUtils:Lcom/yftech/yfhome/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/ToastUtils;->show()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 55
    :try_start_0
    invoke-super {p0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 64
    :try_start_0
    invoke-super {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
