.class Lcom/devesh/coronaalert/ScanDevice$1;
.super Ljava/lang/Object;
.source "ScanDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devesh/coronaalert/ScanDevice;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devesh/coronaalert/ScanDevice;


# direct methods
.method constructor <init>(Lcom/devesh/coronaalert/ScanDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devesh/coronaalert/ScanDevice;

    .line 54
    iput-object p1, p0, Lcom/devesh/coronaalert/ScanDevice$1;->this$0:Lcom/devesh/coronaalert/ScanDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/devesh/coronaalert/ScanDevice$1;->this$0:Lcom/devesh/coronaalert/ScanDevice;

    const-class v2, Lcom/devesh/coronaalert/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "homeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/devesh/coronaalert/ScanDevice$1;->this$0:Lcom/devesh/coronaalert/ScanDevice;

    invoke-virtual {v1, v0}, Lcom/devesh/coronaalert/ScanDevice;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/devesh/coronaalert/ScanDevice$1;->this$0:Lcom/devesh/coronaalert/ScanDevice;

    invoke-virtual {v1}, Lcom/devesh/coronaalert/ScanDevice;->finish()V

    .line 60
    return-void
.end method
