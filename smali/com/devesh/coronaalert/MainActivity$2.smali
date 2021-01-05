.class Lcom/devesh/coronaalert/MainActivity$2;
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

    .line 128
    iput-object p1, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 131
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v0, v0, Lcom/devesh/coronaalert/MainActivity;->enable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    iget-object v0, v0, Lcom/devesh/coronaalert/MainActivity;->disable:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const-string v2, "Enable the bluetooth First!!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_0
    if-eqz p2, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x12c

    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    invoke-virtual {v1, v0}, Lcom/devesh/coronaalert/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lcom/devesh/coronaalert/MainActivity$2;->this$0:Lcom/devesh/coronaalert/MainActivity;

    const/4 v2, 0x1

    iput v2, v1, Lcom/devesh/coronaalert/MainActivity;->x:I

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
