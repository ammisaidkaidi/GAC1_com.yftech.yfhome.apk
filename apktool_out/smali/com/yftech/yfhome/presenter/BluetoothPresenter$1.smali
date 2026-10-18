.class Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "BluetoothPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfhome/presenter/BluetoothPresenter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfhome/presenter/BluetoothPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/yfhome/presenter/BluetoothPresenter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothHfpConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothHfpConnectStatusChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-static {p1, p2}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->access$102(Lcom/yftech/yfhome/presenter/BluetoothPresenter;I)I

    .line 50
    iget-object p1, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-static {p1}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->access$200(Lcom/yftech/yfhome/presenter/BluetoothPresenter;)Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p0, p0, Lcom/yftech/yfhome/presenter/BluetoothPresenter$1;->this$0:Lcom/yftech/yfhome/presenter/BluetoothPresenter;

    invoke-static {p0}, Lcom/yftech/yfhome/presenter/BluetoothPresenter;->access$200(Lcom/yftech/yfhome/presenter/BluetoothPresenter;)Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/yftech/yfhome/presenter/BluetoothPresenter$OnChangedBluetoothListener;->onChangedBTConnect(I)V

    :cond_0
    return-void
.end method
