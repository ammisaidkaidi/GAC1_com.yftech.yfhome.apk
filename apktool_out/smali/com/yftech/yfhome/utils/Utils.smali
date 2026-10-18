.class public Lcom/yftech/yfhome/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/utils/Utils$MyCarScheme;
    }
.end annotation


# static fields
.field public static final ACTIOM_BT_SHOW_BY_SYSTEMUI:Ljava/lang/String; = "com.systemui.bt.show"

.field public static final ACTION_BT_SETTING_START:Ljava/lang/String; = "com.yftech.intent.action.start.bt.setting"

.field public static final ACTION_BT_UI_SETTING_START:Ljava/lang/String; = "com.yftech.intent.action.bluetooth.ui.settings"

.field public static final ACTION_CARPLAY_SETTING_START:Ljava/lang/String; = "com.yftech.intent.action.start.carplay.setting"

.field public static final ACTION_DRIVE_MODE_APP:Ljava/lang/String; = "com.yftech.intent.action.start.settings.avdc"

.field public static final ACTIVITY_MUSIC:Ljava/lang/String; = "com.yftech.libmusic.MusicMainActivity"

.field public static final ACTIVITY_RADIO:Ljava/lang/String; = "com.yftech.libradio.RadioMainActivity"

.field public static final CLIENT_ID_BT_MUSIC:Ljava/lang/String; = "com.yftech.service.bluetooth.profiles.AvrcpManager"

.field public static final CLIENT_ID_CARLIFE:Ljava/lang/String; = "carlife"

.field public static final CLIENT_ID_CARPLAY:Ljava/lang/String; = "com.autochips.carplay.resourcemanagerment"

.field public static final CLIENT_ID_HICAR:Ljava/lang/String; = "hicar"

.field public static final CLIENT_ID_RADIO:Ljava/lang/String; = "com.yftech.radio"

.field public static final CLIENT_ID_USB:Ljava/lang/String; = "com.yftech.media.music.service.MusicService"

.field private static final FILE_CERTIFICATE_HICAR_PATH:Ljava/lang/String; = "/sdcard/certificate_hicar"

.field private static final FILE_CERTIFICATE_PATH:Ljava/lang/String; = "/data/media/0/certificate"

.field public static final KEY_INTERFACE_SOUND_EFFECT:Ljava/lang/String; = "interface_sound_effect"

.field public static final MUSIC_SOURCE_KEY:Ljava/lang/String; = "music_source"

.field public static final MUSIC_SOURCE_OF_BLUETOOTH:Ljava/lang/String; = "MUSIC_SOURCE_OF_BLUETOOTH"

.field public static final MUSIC_SOURCE_OF_CARLIFE:Ljava/lang/String; = "MUSIC_SOURCE_OF_CARLIFE"

.field public static final MUSIC_SOURCE_OF_CARPLAY:Ljava/lang/String; = "MUSIC_SOURCE_OF_CARPLAY"

.field public static final MUSIC_SOURCE_OF_USB1:Ljava/lang/String; = "MUSIC_SOURCE_OF_USB1"

.field public static final MUSIC_SOURCE_OF_USB2:Ljava/lang/String; = "MUSIC_SOURCE_OF_USB2"

.field public static final MYCAR_ACTION_UI_START:Ljava/lang/String; = "com.yftech.yfmycar.main"

.field public static final MYCAR_DATA_SCHEME:Ljava/lang/String; = "mycarscheme"

.field public static final PACKAGE_BT_MUSIC:Ljava/lang/String; = "com.yftech.btmusic"

.field public static final PACKAGE_BT_PHONE:Ljava/lang/String; = "com.yftech.btphone"

.field public static final PACKAGE_CARLIFE:Ljava/lang/String; = "com.baidu.carlifevehicle"

.field public static final PACKAGE_CARPLAY:Ljava/lang/String; = "com.autochips.carplayapp"

.field public static final PACKAGE_HICAR:Ljava/lang/String; = "com.yftech.hicar"

.field public static final PACKAGE_MULTIMEDIA:Ljava/lang/String; = "com.yftech.multimedia"

.field public static final PACKAGE_RADIO:Ljava/lang/String; = "com.yftech.radio"

.field public static final PACKAGE_SETTINGS:Ljava/lang/String; = "com.yftech.settings"

.field public static final PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final PACKAGE_USB:Ljava/lang/String; = "com.yftech.media.service"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final VALUE_INTERFACE_SOUND_EFFECT_CLOSE:I = 0x0

.field public static final VALUE_INTERFACE_SOUND_EFFECT_OPEN:I = 0x1

.field public static final WallPaperSettingAction:Ljava/lang/String; = "com.yftech.multimedia.action.wallpaper.setting"

.field public static final WallPaperSettingData:Ljava/lang/String; = "com.yftech.multimedia.data.wallpaper.setting"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static getAudioFocusByClientId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.yftech.media.music.service.MusicService"

    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_0
    sget-object v2, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSourceByClientId:path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 372
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

    .line 381
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "carlife"

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v1, "com.autochips.carplay.resourcemanagerment"

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const-string v1, "com.yftech.radio"

    .line 387
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    .line 391
    :cond_7
    :goto_0
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFocusByClientId clientId:"

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

.method public static getCurrentMediaSource()I
    .locals 3

    .line 306
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 310
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 311
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yftech/yfhome/utils/Utils;->getCurrentSourceByClientId(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getCurrentSourceByClientId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    .line 327
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.yftech.media.music.service.MusicService"

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 330
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/music/CarMusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_0
    sget-object v2, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSourceByClientId:path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 336
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

    .line 345
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "carlife"

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v1, "com.autochips.carplay.resourcemanagerment"

    .line 349
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    .line 353
    :cond_6
    :goto_0
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

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

.method public static getTopActivityPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->getTopComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTopComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "getTopComponentName  context == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "activity"

    .line 140
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    .line 142
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "getTopComponentName  activityManager == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 149
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static isArLanguage()Z
    .locals 4

    .line 534
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 535
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguage:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ar"

    .line 536
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCanOpenMyCar()Z
    .locals 4

    .line 493
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isIalPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isOpenCloseControlConfigShow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yftech/yfhome/utils/Utils;->isCockpitConfigShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 495
    :goto_1
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCanOpenMyCar: canOpenMyCar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCarplayCertificate()Z
    .locals 4

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/media/0/certificate"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 406
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarplayCertificate carplayCertificate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCockpitConfigShow()Z
    .locals 5

    .line 518
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    move-result-object v1

    .line 521
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRearviewMirrorAdjustmentPresent()Z

    move-result v2

    .line 523
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSeatControlPresent()Z

    move-result v3

    .line 524
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    if-ne v1, v0, :cond_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 525
    :goto_1
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5ea7\u8231\u662f\u5426\u663e\u793a isCockpitConfigShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isFmKeepTwoDecima()Z
    .locals 5

    .line 541
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioFrequency()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/yftech/yfhome/utils/Utils$1;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency:[I

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioFrequency;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 559
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "isFmKeepTwoDecima() unknown radio radioFrequency"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    .line 562
    :goto_0
    :pswitch_1
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFmKeepTwoDecima() radioFrequency:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isFmKeepTwoDecima:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isGACLogoPresent()Z
    .locals 4

    .line 511
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isGACLogoPresent()Z

    move-result v0

    .line 512
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGACLogoPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isHiCarCertificate()Z
    .locals 4

    .line 415
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/certificate_hicar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 417
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHiCarCertificate hiCarCertificate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isHideCar(Landroid/content/Context;)Z
    .locals 3

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.yftech.engineeringmode.hide_car"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 427
    :goto_0
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHideCar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isOpenCloseControlConfigShow()Z
    .locals 4

    .line 502
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWindowControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, v1, :cond_1

    .line 503
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isPlgmfunccfgPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRoofControlPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 505
    :goto_1
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u5173\u95ed\u5408\u662f\u5426\u663e\u793a isOpenCloseControlConfigShow\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isOpenInterfaceSoundEffect(Landroid/content/Context;)Z
    .locals 5

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interface_sound_effect"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 475
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenInterfaceSoundEffect: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 477
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getInterfaceSound()Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    move-result-object v0

    .line 478
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 483
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "interface_sound_effect"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public static isRadioDABPresent()Z
    .locals 4

    .line 568
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioDABAndRDSConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    move-result-object v0

    .line 569
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioDABPresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRadioPresent()Z
    .locals 5

    .line 599
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    move-result-object v0

    .line 600
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->FM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->AM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;->FM_PLUSAM:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioConfiguration;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 603
    :goto_1
    sget-object v2, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioPresent: radioCofig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isRadioRdsPresent()Z
    .locals 4

    .line 579
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getRadioDABAndRDSConfiguration()Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    move-result-object v0

    .line 580
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioDABAndRDSConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/adapter/IHostConfig$RadioDABAndRDSConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRtl()Z
    .locals 2

    .line 531
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSportPlusPresent()Z
    .locals 4

    .line 611
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSportPlusPresent()Z

    move-result v0

    .line 612
    sget-object v1, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSportPlusPresent result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 291
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static setAcAutoDialogShowFlag(Landroid/content/Context;I)V
    .locals 2

    .line 463
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcAutoDialogShowFlag: flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ac_auto_dialog_show"

    .line 464
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAvdcDialogShowFlag(Landroid/content/Context;I)V
    .locals 2

    .line 450
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAvdcDialogShowFlag: flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "avdc_dialog_show"

    .line 451
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setImmersiveViewStatusBar(Landroid/app/Activity;)V
    .locals 2

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 438
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static startAppByAction(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, 0x10300000

    .line 248
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static startAppByAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 227
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10300000

    .line 228
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 231
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static startAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 174
    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->getTopActivityPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 180
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "intent is null, startAppByPackageName failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/high16 v1, 0x300000

    .line 183
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method public static startAppByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/yftech/yfhome/utils/Utils;->getTopActivityPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 207
    sget-object p0, Lcom/yftech/yfhome/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "intent is null, startAppByPackageName failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/high16 v1, 0x300000

    .line 210
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method public static startAppByView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 273
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 275
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 276
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
