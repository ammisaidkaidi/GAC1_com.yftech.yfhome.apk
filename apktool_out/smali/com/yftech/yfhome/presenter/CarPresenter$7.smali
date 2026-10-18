.class Lcom/yftech/yfhome/presenter/CarPresenter$7;
.super Ljava/lang/Object;
.source "CarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/CarPresenter;->testDoorStatus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/CarPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/CarPresenter;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/CarPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-virtual {v0}, Lcom/yftech/yfhome/presenter/CarPresenter;->resetCarBodyPicture()V

    .line 710
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/CarPresenter$7;->this$0:Lcom/yftech/yfhome/presenter/CarPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$300(Lcom/yftech/yfhome/presenter/CarPresenter;)Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;

    move-result-object p0

    invoke-static {}, Lcom/yftech/yfhome/presenter/CarPresenter;->access$1300()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/yftech/yfhome/presenter/CarPresenter$OnChangedCarListener;->onChangedHood(Z)V

    return-void
.end method
