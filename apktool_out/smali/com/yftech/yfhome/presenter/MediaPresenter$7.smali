.class Lcom/yftech/yfhome/presenter/MediaPresenter$7;
.super Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;
.source "MediaPresenter.java"


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

    .line 1052
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V
    .locals 12

    .line 1055
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaInfoChanged mCurrentMediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$100(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v1

    if-ne v0, v1, :cond_e

    :cond_0
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 1057
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 1060
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getDuration()J

    move-result-wide v0

    .line 1061
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getProgress()J

    move-result-wide v2

    .line 1063
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0047

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1064
    :goto_1
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v6}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$300(Lcom/yftech/yfhome/presenter/MediaPresenter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    const/4 v9, 0x0

    if-lez v8, :cond_5

    .line 1067
    iget-object v8, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    long-to-float v10, v2

    const v11, 0x461c4000    # 10000.0f

    mul-float/2addr v10, v11

    long-to-float v11, v0

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8, v10}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    goto :goto_4

    .line 1070
    :cond_5
    iget-object v8, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v8}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1071
    iget-object v8, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v8, v9}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1402(Lcom/yftech/yfhome/presenter/MediaPresenter;I)I

    .line 1073
    :cond_6
    :goto_4
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMediaInfoChanged mTitle:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mSinger:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mIsPlaying:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", totalTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", progress:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mProgress:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    .line 1078
    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1080
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v1

    const/4 v8, 0x1

    if-ne v0, v1, :cond_7

    .line 1081
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    .line 1086
    :cond_7
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v0

    if-nez v0, :cond_9

    cmp-long v0, v2, v6

    if-nez v0, :cond_9

    .line 1087
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1088
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, v5}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1092
    :cond_8
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 1100
    :cond_9
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v9

    goto :goto_6

    :cond_b
    :goto_5
    move v0, v8

    :goto_6
    if-eqz v0, :cond_c

    .line 1102
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, v4}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$702(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0, v5}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$902(Lcom/yftech/yfhome/presenter/MediaPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$700(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v2}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$900(Lcom/yftech/yfhome/presenter/MediaPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result p1

    if-ne v8, p1, :cond_d

    goto :goto_8

    :cond_d
    move v8, v9

    :goto_8
    invoke-static {v0, v8}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1102(Lcom/yftech/yfhome/presenter/MediaPresenter;Z)Z

    .line 1108
    invoke-static {}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPhoneLinkMediaCallback : mIsPlaying = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1400(Lcom/yftech/yfhome/presenter/MediaPresenter;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangedMediaProgress(I)V

    .line 1110
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$500(Lcom/yftech/yfhome/presenter/MediaPresenter;)Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfhome/presenter/MediaPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/MediaPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/MediaPresenter;->access$1100(Lcom/yftech/yfhome/presenter/MediaPresenter;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/yfhome/presenter/MediaPresenter$OnChangedMediaListener;->onChangePlayStatus(Z)V

    :cond_e
    return-void
.end method
