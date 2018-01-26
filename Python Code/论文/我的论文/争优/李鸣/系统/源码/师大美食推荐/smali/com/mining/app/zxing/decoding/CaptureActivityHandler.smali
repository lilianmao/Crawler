.class public final Lcom/mining/app/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/example/qr_codescan/MipcaActivityCapture;

.field private final decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

.field private state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/example/qr_codescan/MipcaActivityCapture;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/qr_codescan/MipcaActivityCapture;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    .line 30
    new-instance v0, Lcom/mining/app/zxing/decoding/DecodeThread;

    new-instance v1, Lcom/mining/app/zxing/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/example/qr_codescan/MipcaActivityCapture;->getViewfinderView()Lcom/mining/app/zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mining/app/zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/mining/app/zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/mining/app/zxing/decoding/DecodeThread;-><init>(Lcom/example/qr_codescan/MipcaActivityCapture;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    .line 32
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/DecodeThread;->start()V

    .line 33
    sget-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    .line 34
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->startPreview()V

    .line 35
    invoke-direct {p0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 36
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    .line 86
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/mining/app/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v0, v1, v2}, Lcom/mining/app/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 87
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, p0, v1}, Lcom/mining/app/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 88
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->drawViewfinder()V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, p0, v1}, Lcom/mining/app/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-direct {p0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 53
    :goto_1
    iget-object v2, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v2, v0, v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 51
    :cond_1
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_1

    .line 56
    :pswitch_4
    sget-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    .line 57
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/mining/app/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v0, v1, v2}, Lcom/mining/app/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 60
    :pswitch_5
    iget-object v1, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->setResult(ILandroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finish()V

    goto :goto_0

    .line 64
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0, v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->state:Lcom/mining/app/zxing/decoding/CaptureActivityHandler$State;

    .line 73
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->stopPreview()V

    .line 74
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f080007

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/mining/app/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 81
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method
