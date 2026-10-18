.class Lcom/yftech/yfhome/presenter/RadioPresenter$5;
.super Lcom/yftech/car/data/CarDataManager$CarDataCallback;
.source "RadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfhome/presenter/RadioPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/RadioPresenter;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-direct {p0}, Lcom/yftech/car/data/CarDataManager$CarDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarDataChanged(Lcom/yftech/car/data/CarData;)V
    .locals 3

    const-string v0, "DAB_CHANNEINFO_CHANGED_POSTION"

    .line 934
    invoke-virtual {p1, v0}, Lcom/yftech/car/data/CarData;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DAB_CHANNEINFO_CHANGED_POSTION"

    const/4 v0, 0x0

    .line 935
    invoke-static {p1, v0}, Lcom/yftech/car/data/CarDataManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 936
    invoke-static {}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarDataChanged: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/RadioPresenter$5;->this$0:Lcom/yftech/yfhome/presenter/RadioPresenter;

    invoke-static {p0, p1}, Lcom/yftech/yfhome/presenter/RadioPresenter;->access$400(Lcom/yftech/yfhome/presenter/RadioPresenter;I)V

    :cond_0
    return-void
.end method
