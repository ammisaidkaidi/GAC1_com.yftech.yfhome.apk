.class Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;
.super Landroid/database/ContentObserver;
.source "CarlifeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsValueChangeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;


# direct methods
.method public constructor <init>(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;Landroid/os/Handler;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    .line 296
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 301
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 302
    invoke-static {}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 304
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "carlife_connect_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "carlife_connect_status"

    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    .line 306
    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->ordinal()I

    move-result v0

    .line 305
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setConnectStatus(I)V

    goto/16 :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "carlife_music_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "carlife_music_status"

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PAUSE:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 309
    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result v1

    .line 308
    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sget-object p2, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PLAY:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 310
    invoke-virtual {p2}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result p2

    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    .line 308
    :cond_1
    invoke-virtual {p1, v0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setPlaying(Z)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "carLife_music_id3Info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "carLife_music_id3Info"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setId3Info(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "carlife_music_duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "carlife_music_duration"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setTotalDuration(I)V

    goto :goto_0

    .line 315
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "carlife_music_progressbar"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 316
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;->this$0:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "carlife_music_progressbar"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setProgress(I)V

    :cond_5
    :goto_0
    return-void
.end method
