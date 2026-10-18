.class public Lcom/yftech/yfhome/utils/MySoundPool;
.super Ljava/lang/Object;
.source "MySoundPool.java"


# static fields
.field private static final COOL_RANGE:F = 0.1535f

.field private static final DEF_RANGE:F = 0.5011872f

.field private static final HEAT_RANGE:F = 0.1255f

.field private static final INTERFACE_RANGE:F = 0.5f

.field private static final MAX_PLAYING_SUM:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoolId:I

.field private mHeatId:I

.field private mInterfaceId:I

.field private mPopDlgId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/yftech/yfhome/utils/MySoundPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    .line 28
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v0, 0xd

    .line 29
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    iget-object p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0002

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mInterfaceId:I

    .line 38
    iget-object p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mCoolId:I

    .line 39
    iget-object p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0001

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mHeatId:I

    return-void
.end method


# virtual methods
.method public playCoolSoundEffect()V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mCoolId:I

    const v2, 0x3e1d2f1b    # 0.1535f

    const v3, 0x3e1d2f1b    # 0.1535f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 54
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCoolSoundEffect  streamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playHeatSoundEffect()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mHeatId:I

    const v2, 0x3e008312    # 0.1255f

    const v3, 0x3e008312    # 0.1255f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 59
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playHeatSoundEffect  streamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playInterfaceSoundEffect()V
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/yftech/yfhome/utils/Utils;->isOpenInterfaceSoundEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mInterfaceId:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 47
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playInterfaceSoundEffect  streamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/utils/MySoundPool;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfhome/utils/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public playPopDlgSoundEffect()V
    .locals 0

    return-void
.end method
