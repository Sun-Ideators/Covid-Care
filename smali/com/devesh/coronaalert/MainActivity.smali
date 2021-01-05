.class public Lcom/devesh/coronaalert/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Landroid/bluetooth/BluetoothAdapter;

.field disable:Landroid/widget/CheckBox;

.field enable:Landroid/widget/CheckBox;

.field img:Landroid/widget/ImageView;

.field listView:Landroid/widget/ListView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field name:Landroid/widget/TextView;

.field nobluetooth:Landroid/widget/ImageView;

.field notificationManager:Landroid/app/NotificationManager;

.field private paireddevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field pro:Landroid/widget/ProgressBar;

.field stringArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/devesh/coronaalert/MainActivity;->x:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 183
    new-instance v0, Lcom/devesh/coronaalert/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/devesh/coronaalert/MainActivity$3;-><init>(Lcom/devesh/coronaalert/MainActivity;)V

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/devesh/coronaalert/MainActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/devesh/coronaalert/MainActivity;

    .line 48
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/devesh/coronaalert/MainActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/devesh/coronaalert/MainActivity;

    .line 48
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/devesh/coronaalert/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/devesh/coronaalert/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/devesh/coronaalert/MainActivity;->sendMyNotification(Ljava/lang/String;)V

    return-void
.end method

.method private list()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->paireddevices:Ljava/util/Set;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "list":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->paireddevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 295
    .local v2, "bt":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "bt":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 298
    :cond_0
    const/4 v1, 0x0

    const-string v2, "Showing devices"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 299
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 300
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    return-void
.end method

.method private sendMyNotification(Ljava/lang/String;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/devesh/coronaalert/ScanDevice;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 254
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/devesh/coronaalert/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 255
    .local v3, "soundUri":Landroid/net/Uri;
    const-string v4, "channel_location"

    .line 256
    .local v4, "CHANNEL_ID":Ljava/lang/String;
    const-string v5, "channel_location"

    .line 259
    .local v5, "CHANNEL_NAME":Ljava/lang/String;
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v6, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    const/high16 v7, 0x7f0b0000

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 261
    const v7, 0x7f0d001b

    invoke-virtual {p0, v7}, Lcom/devesh/coronaalert/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 262
    invoke-virtual {v6, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 263
    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 266
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 269
    .local v6, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/devesh/coronaalert/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/devesh/coronaalert/MainActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 270
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 272
    if-eqz v3, :cond_0

    .line 273
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 274
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 275
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 276
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 278
    .local v7, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v9, Landroid/app/NotificationChannel;

    invoke-direct {v9, v4, v5, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 279
    .local v9, "notificationChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v9, v3, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 280
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 281
    invoke-virtual {v9, v8}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 282
    const/16 v8, 0xa

    new-array v8, v8, [J

    fill-array-data v8, :array_0

    invoke-virtual {v9, v8}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 283
    iget-object v8, p0, Lcom/devesh/coronaalert/MainActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 287
    .end local v7    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v9    # "notificationChannel":Landroid/app/NotificationChannel;
    :cond_0
    iget-object v7, p0, Lcom/devesh/coronaalert/MainActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 288
    return-void

    :array_0
    .array-data 8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data
.end method


# virtual methods
.method public getLocalBluetoothname()Ljava/lang/String;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_1
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    if-nez p1, :cond_3

    .line 152
    iget v0, p0, Lcom/devesh/coronaalert/MainActivity;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 153
    if-ne p2, v1, :cond_0

    .line 154
    const-string v0, "Turned on"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/devesh/coronaalert/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 164
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/devesh/coronaalert/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 165
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->enable:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 171
    :cond_1
    if-ne p2, v1, :cond_2

    .line 172
    const-string v0, "Visible for 1 hour"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "not ok"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->disable:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->enable:Landroid/widget/CheckBox;

    .line 71
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->disable:Landroid/widget/CheckBox;

    .line 72
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->img:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->name:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->nobluetooth:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->listView:Landroid/widget/ListView;

    .line 76
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->pro:Landroid/widget/ProgressBar;

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    .line 79
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity;->name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/devesh/coronaalert/MainActivity;->getLocalBluetoothname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION":I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v2, v3

    invoke-static {p0, v2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 88
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 89
    const-string v2, "blutooth not supported"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Lcom/devesh/coronaalert/MainActivity;->finish()V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->enable:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/devesh/coronaalert/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 105
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/devesh/coronaalert/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    iget-object v5, p0, Lcom/devesh/coronaalert/MainActivity;->stringArrayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/devesh/coronaalert/MainActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    .end local v1    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const-string v1, "Please enable the Bluetooth"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->enable:Landroid/widget/CheckBox;

    new-instance v2, Lcom/devesh/coronaalert/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/devesh/coronaalert/MainActivity$1;-><init>(Lcom/devesh/coronaalert/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity;->disable:Landroid/widget/CheckBox;

    new-instance v2, Lcom/devesh/coronaalert/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/devesh/coronaalert/MainActivity$2;-><init>(Lcom/devesh/coronaalert/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    return-void
.end method
