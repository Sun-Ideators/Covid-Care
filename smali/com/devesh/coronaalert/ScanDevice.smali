.class public Lcom/devesh/coronaalert/ScanDevice;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScanDevice.java"


# static fields
.field private static SPLASH_TIME_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/16 v0, 0x7d0

    sput v0, Lcom/devesh/coronaalert/ScanDevice;->SPLASH_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/devesh/coronaalert/ScanDevice;->setContentView(I)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/devesh/coronaalert/ScanDevice$1;

    invoke-direct {v1, p0}, Lcom/devesh/coronaalert/ScanDevice$1;-><init>(Lcom/devesh/coronaalert/ScanDevice;)V

    sget v2, Lcom/devesh/coronaalert/ScanDevice;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method
