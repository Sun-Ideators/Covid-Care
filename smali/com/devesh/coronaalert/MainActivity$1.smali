.class Lcom/devesh/coronaalert/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devesh/coronaalert/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 113
    iput-object p1, p0, Lcom/devesh/coronaalert/MainActivity$1;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 116
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$1;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-static {v1}, Lcom/devesh/coronaalert/MainActivity;->access$000(Lcom/devesh/coronaalert/MainActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 118
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$1;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const-string v2, "Turned off"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity$1;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-virtual {v2, v1, v0}, Lcom/devesh/coronaalert/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    iget-object v2, p0, Lcom/devesh/coronaalert/MainActivity$1;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iput v0, v2, Lcom/devesh/coronaalert/MainActivity;->x:I

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
