.class public Lcom/yftech/yfhome/utils/AudioSettingUtil;
.super Ljava/lang/Object;
.source "AudioSettingUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSettingUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentMediaSource()I
    .locals 3

    .line 83
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 88
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getCurrentSourceByClientId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.yftech.media.music.service.MusicService"

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    sget-object v2, Lcom/yftech/yfhome/utils/AudioSettingUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSourceByClientId:path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 57
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const-string v1, "com.yftech.service.bluetooth.profiles.AvrcpManager"

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "carlife"

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v1, "com.autochips.carplay.resourcemanagerment"

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    .line 74
    :cond_6
    :goto_0
    sget-object v1, Lcom/yftech/yfhome/utils/AudioSettingUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSourceByClientId clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ret:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static playSystemClickSoundEffect(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method
