.class final Lcom/mining/app/zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/example/qr_codescan/MipcaActivityCapture;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/mining/app/zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/example/qr_codescan/MipcaActivityCapture;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/qr_codescan/MipcaActivityCapture;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 24
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 25
    iput-object p1, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    .line 26
    return-void
.end method

.method private decode([BII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    const/4 v0, 0x0

    .line 41
    array-length v1, p1

    new-array v4, v1, [B

    move v3, v2

    .line 42
    :goto_0
    if-ge v3, p3, :cond_1

    move v1, v2

    .line 43
    :goto_1
    if-ge v1, p2, :cond_0

    .line 44
    mul-int v5, v1, p3

    add-int/2addr v5, p3

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    mul-int v6, v3, p2

    add-int/2addr v6, v1

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v4, p3, p2}, Lcom/mining/app/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v3, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 57
    :goto_2
    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    iget-object v2, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v2}, Lcom/example/qr_codescan/MipcaActivityCapture;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x7f080003

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v3, "barcode_bitmap"

    invoke-virtual {v1}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :goto_3
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 55
    iget-object v2, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f080002

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 31
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mining/app/zxing/decoding/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 34
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x7f080001 -> :sswitch_0
        0x7f080007 -> :sswitch_1
    .end sparse-switch
.end method
