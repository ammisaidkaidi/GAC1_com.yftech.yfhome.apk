.class public Lcom/yftech/yfhome/utils/SharedPrefsUtil;
.super Ljava/lang/Object;
.source "SharedPrefsUtil.java"


# static fields
.field public static final TAG_AUDIO_FOCUS_ON_BY_CLIENTID:Ljava/lang/String; = "TAG_AUDIO_FOCUS_ON_BY_CLIENTID"

.field public static final TAG_IS_WALLPAPER_MODE:Ljava/lang/String; = "TAG_WALL_MODE"

.field public static final TAG_WALLPAPER_DATA:Ljava/lang/String; = "TAG_WALLPAPER_DATA"

.field private static instance:Lcom/yftech/yfhome/utils/SharedPrefsUtil;

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    invoke-direct {v0}, Lcom/yftech/yfhome/utils/SharedPrefsUtil;-><init>()V

    sput-object v0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->instance:Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/utils/SharedPrefsUtil;
    .locals 2

    .line 23
    sget-object v0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "first_time"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    .line 26
    :cond_0
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->instance:Lcom/yftech/yfhome/utils/SharedPrefsUtil;

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 0

    .line 60
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)D
    .locals 0

    .line 64
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 0

    .line 56
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 71
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 34
    sget-object p0, Lcom/yftech/yfhome/utils/SharedPrefsUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 35
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 38
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 41
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 42
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 45
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
