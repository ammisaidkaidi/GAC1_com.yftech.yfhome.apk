.class Lcom/yftech/yfhome/presenter/MediaPresenter$9;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Lcom/yftech/yfhome/presenter/Carplay/ICarplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/MediaPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/MediaPresenter;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarplayConnectChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1149
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayMusicID3Changed:title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", artist="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCarplayPlayingChanged(Z)V
    .locals 2

    .line 1143
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayPlayingChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCarplayProgressChanged(I)V
    .locals 2

    .line 1161
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayProgressChanged:progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCarplayTotalDurationChanged(I)V
    .locals 2

    .line 1155
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayTotalDurationChanged:totalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResourceStateChanged(Z)V
    .locals 3

    .line 1167
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceStateChanged:isDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$9;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onCarPlayUIDisplayStateChanged(Z)V

    :cond_0
    return-void
.end method
