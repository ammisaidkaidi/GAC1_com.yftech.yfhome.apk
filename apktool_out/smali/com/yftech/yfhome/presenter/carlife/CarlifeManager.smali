.class public Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;
.super Ljava/lang/Object;
.source "CarlifeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarlifeManager"

.field private static volatile mInstance:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

.field private mConnectStatus:I

.field private mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

.field private mContext:Landroid/content/Context;

.field private mId3Info:Ljava/lang/String;

.field private mIsPlaying:Z

.field private mProgress:I

.field private mTitle:Ljava/lang/String;

.field private mTotalDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;-><init>(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    .line 39
    invoke-direct {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->initData()V

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->registerContentObserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mInstance:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mInstance:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mInstance:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 51
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mInstance:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;

    return-object p0
.end method

.method private getMessageById3(Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->ordinal()I

    move-result v0

    if-eqz p0, :cond_0

    .line 128
    array-length v1, p0

    if-le v1, v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 132
    :goto_0
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageById3 id3Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_connect_status"

    sget-object v2, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->DISCONNECT:Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;

    .line 60
    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/carlife/CarlifeConnectStatus;->ordinal()I

    move-result v2

    .line 59
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mConnectStatus:I

    .line 61
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_music_status"

    sget-object v2, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PAUSE:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 62
    invoke-virtual {v2}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result v2

    .line 61
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->PLAY:Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;

    .line 62
    invoke-virtual {v1}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mIsPlaying:Z

    .line 63
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carLife_music_id3Info"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->TITLE:Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getMessageById3(Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTitle:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->ARTIST:Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;

    invoke-direct {p0, v0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getMessageById3(Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mArtist:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_music_progressbar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mProgress:I

    .line 68
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_music_duration"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTotalDuration:I

    return-void
.end method

.method private registerContentObserver(Landroid/content/Context;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_connect_status"

    .line 79
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    const/4 v3, 0x1

    .line 78
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_music_status"

    .line 82
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    .line 81
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carLife_music_id3Info"

    .line 85
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    .line 84
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carlife_music_duration"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    .line 87
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "carlife_music_progressbar"

    .line 91
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mContentOb:Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$SettingsValueChangeContentObserver;

    .line 90
    invoke-virtual {p1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public CarlifePlayControl(Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;)V
    .locals 3
    .param p1    # Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarlifePlayControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager$1;-><init>(Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;Lcom/yftech/yfhome/presenter/carlife/CarlifePlayStatus;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getArtist()Ljava/lang/String;
    .locals 3

    .line 233
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectStatus()I
    .locals 3

    .line 142
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mConnectStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mConnectStatus:I

    return p0
.end method

.method public getId3Info()Ljava/lang/String;
    .locals 3

    .line 188
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getId3Info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    return-object p0
.end method

.method public getProgress()I
    .locals 3

    .line 253
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mProgress:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 213
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalDuration()I
    .locals 3

    .line 276
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTotalDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTotalDuration:I

    return p0
.end method

.method public isPlaying()Z
    .locals 3

    .line 165
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mIsPlaying:Z

    return p0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 3

    .line 243
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setArtist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setCarlifeListener(Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    return-void
.end method

.method public setConnectStatus(I)V
    .locals 3

    .line 152
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mConnectStatus:I

    .line 154
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;->onCarlifeConnectChanged(I)V

    :cond_0
    return-void
.end method

.method public setId3Info(Ljava/lang/String;)V
    .locals 3

    .line 198
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId3Info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mId3Info:Ljava/lang/String;

    .line 200
    sget-object p1, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->TITLE:Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getMessageById3(Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setTitle(Ljava/lang/String;)V

    .line 201
    sget-object p1, Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;->ARTIST:Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;

    invoke-direct {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getMessageById3(Lcom/yftech/yfhome/presenter/carlife/CarlifeID3;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->setArtist(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->getArtist()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;->onCarlifeMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPlaying(Z)V
    .locals 3

    .line 175
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mIsPlaying:Z

    .line 177
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;->onCarlifePlayingChanged(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 263
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mProgress:I

    .line 265
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;->onCarlifeProgressChanged(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 223
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTotalDuration(I)V
    .locals 3

    .line 286
    sget-object v0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTotalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput p1, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mTotalDuration:I

    .line 288
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/carlife/CarlifeManager;->mCarlifeListener:Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfhome/presenter/carlife/ICarlifeListener;->onCarlifeTotalDurationChanged(I)V

    :cond_0
    return-void
.end method
