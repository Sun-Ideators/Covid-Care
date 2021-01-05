.class Lcom/devesh/coronaalert/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devesh/coronaalert/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devesh/coronaalert/MainActivity;


# direct methods
.method constructor <init>(Lcom/devesh/coronaalert/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devesh/coronaalert/MainActivity;

    .line 183
    iput-object p1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v1, v1, Lcom/devesh/coronaalert/MainActivity;->pro:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 189
    :cond_0
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x8

    const-string v6, "android.bluetooth.device.action.FOUND"

    if-eqz v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v4, v4, Lcom/devesh/coronaalert/MainActivity;->pro:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v4, v4, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    const-string v4, "No device found"

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v4, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v4, v4, Lcom/devesh/coronaalert/MainActivity;->nobluetooth:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v4, "Done"

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v1, v1, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-static {v1}, Lcom/devesh/coronaalert/MainActivity;->access$100(Lcom/devesh/coronaalert/MainActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/devesh/coronaalert/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v1, v1, Lcom/devesh/coronaalert/MainActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_3

    .line 209
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 211
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v1, v1, Lcom/devesh/coronaalert/MainActivity;->nobluetooth:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 214
    .local v2, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x20c

    if-ne v4, v5, :cond_8

    .line 215
    const/16 v4, -0x8000

    const-string v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 216
    .local v4, "rssi":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object v3, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const/high16 v5, 0x7f0c0000

    invoke-static {v3, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 218
    .local v3, "mediaPlayer":Landroid/media/MediaPlayer;
    mul-int/lit8 v5, v4, -0x1

    const/16 v6, 0x46

    if-ge v5, v6, :cond_5

    .line 219
    iget-object v5, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const-string v6, "A Device is found near you!! Please be Alert"

    invoke-static {v5, v6}, Lcom/devesh/coronaalert/MainActivity;->access$200(Lcom/devesh/coronaalert/MainActivity;Ljava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Lcom/devesh/coronaalert/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 222
    .local v5, "v":Landroid/os/Vibrator;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const-wide/16 v8, 0x3e8

    if-lt v6, v7, :cond_3

    .line 223
    const/4 v6, -0x1

    invoke-static {v8, v9, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {v5, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 228
    :goto_1
    mul-int/lit8 v6, v4, -0x1

    const/16 v7, 0x32

    if-ge v6, v7, :cond_4

    .line 229
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 231
    .end local v5    # "v":Landroid/os/Vibrator;
    :cond_4
    goto :goto_2

    .line 233
    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 234
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 235
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 240
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v5, v5, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v5, p0, Lcom/devesh/coronaalert/MainActivity$3;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v5, v5, Lcom/devesh/coronaalert/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 209
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v3    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v4    # "rssi":I
    :cond_7
    :goto_3
    nop

    .line 245
    :cond_8
    :goto_4
    return-void
.end method
