.class Lcom/yftech/yfhome/view/HomeActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/view/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;)V
    .locals 0

    .line 2269
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 2273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2274
    invoke-static {}, Lcom/yftech/yfhome/view/HomeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.TIME_TICK"

    .line 2275
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.TIME_SET"

    .line 2276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 2277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.yftech.multimedia.action.wallpaper.setting"

    .line 2281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2282
    iget-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4602(Lcom/yftech/yfhome/view/HomeActivity;Z)Z

    const-string p1, "com.yftech.multimedia.data.wallpaper.setting"

    .line 2283
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2285
    invoke-static {}, Lcom/yftech/yfhome/view/HomeActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive wallpaper path, path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "null!!!"

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2, v0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4700(Lcom/yftech/yfhome/view/HomeActivity;Z)V

    .line 2290
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$4800(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2291
    iget-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p2}, Lcom/yftech/yfhome/view/HomeActivity;->access$4900(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-virtual {p0}, Lcom/yftech/yfhome/view/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/yftech/yfhome/utils/Constants;->displayWidth:I

    sget v2, Lcom/yftech/yfhome/utils/Constants;->displayHeight:I

    invoke-static {p1, v1, v2}, Lcom/yftech/yfhome/utils/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2278
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$13;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4500(Lcom/yftech/yfhome/view/HomeActivity;)V

    :cond_3
    :goto_2
    return-void
.end method
