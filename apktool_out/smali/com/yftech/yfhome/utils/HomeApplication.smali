.class public Lcom/yftech/yfhome/utils/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/yftech/yfhome/utils/HomeApplication;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfigurationChangeLisenters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 13
    const-class v0, Lcom/yftech/yfhome/utils/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    return-void
.end method

.method public static getInstance()Lcom/yftech/yfhome/utils/HomeApplication;
    .locals 1

    .line 18
    sget-object v0, Lcom/yftech/yfhome/utils/HomeApplication;->mInstance:Lcom/yftech/yfhome/utils/HomeApplication;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    iget-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;

    if-eqz v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    monitor-enter v2

    .line 44
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;->onAppConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    sput-object p0, Lcom/yftech/yfhome/utils/HomeApplication;->mInstance:Lcom/yftech/yfhome/utils/HomeApplication;

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 31
    iget-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/yftech/yfhome/utils/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->getInstance(Landroid/content/Context;)Lcom/yftech/yfhome/presenter/MediaPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->release()V

    return-void
.end method

.method public registerConfigurationChangeLisenter(Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unRegisterConfigurationChangeLisenter(Lcom/yftech/yfhome/utils/HomeApplication$ConfigurationChangeLisenter;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/yftech/yfhome/utils/HomeApplication;->mConfigurationChangeLisenters:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
