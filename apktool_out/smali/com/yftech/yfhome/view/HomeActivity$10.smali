.class Lcom/yftech/yfhome/view/HomeActivity$10;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/view/HomeActivity;->onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/view/HomeActivity;

.field final synthetic val$gear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/view/HomeActivity;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    iput-object p2, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->val$gear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1367
    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->val$gear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->val$gear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->val$gear:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1370
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yftech/yfhome/view/HomeActivity$10;->this$0:Lcom/yftech/yfhome/view/HomeActivity;

    invoke-static {p0}, Lcom/yftech/yfhome/view/HomeActivity;->access$4100(Lcom/yftech/yfhome/view/HomeActivity;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
