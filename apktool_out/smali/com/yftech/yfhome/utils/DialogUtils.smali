.class public Lcom/yftech/yfhome/utils/DialogUtils;
.super Landroid/app/Dialog;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mContent:Landroid/widget/TextView;

.field private mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

.field private mSure:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0e0160

    .line 23
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0a001e

    .line 24
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->setContentView(I)V

    const p1, 0x7f07005c

    .line 25
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mContent:Landroid/widget/TextView;

    const p1, 0x7f0700e7

    .line 26
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    const p1, 0x7f07004c

    .line 27
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    const p1, 0x7f0700fd

    .line 28
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mTitle:Landroid/widget/TextView;

    .line 29
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/DialogUtils;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x808

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/utils/DialogUtils;->setCancelable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0700e7

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

    if-eqz p1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

    invoke-interface {p0}, Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;->onSure()V

    goto :goto_0

    :cond_0
    const v0, 0x7f07004c

    if-ne p1, v0, :cond_1

    .line 83
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

    if-eqz p1, :cond_1

    .line 84
    iget-object p0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

    invoke-interface {p0}, Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    const v0, 0x7f0d0067

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    const v0, 0x7f0d0025

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-object p0
.end method

.method public setOnButtonListener(Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;)Lcom/yftech/yfhome/utils/DialogUtils;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mOnButtonListener:Lcom/yftech/yfhome/utils/DialogUtils$OnButtonListener;

    return-object p0
.end method

.method public setTitleAndContentAndBtnStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yftech/yfhome/utils/DialogUtils;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mContent:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mSure:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/yftech/yfhome/utils/DialogUtils;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p0
.end method
