.class public Lcom/example/qr_codescan/MipcaActivityCapture;
.super Landroid/app/Activity;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

.field private intent:Landroid/content/Intent;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

.field private wrapperStr:Ljava/lang/String;

.field private wrapperThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/example/qr_codescan/MipcaActivityCapture$2;

    invoke-direct {v0, p0}, Lcom/example/qr_codescan/MipcaActivityCapture$2;-><init>(Lcom/example/qr_codescan/MipcaActivityCapture;)V

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperThread:Ljava/lang/Thread;

    .line 198
    new-instance v0, Lcom/example/qr_codescan/MipcaActivityCapture$3;

    invoke-direct {v0, p0}, Lcom/example/qr_codescan/MipcaActivityCapture$3;-><init>(Lcom/example/qr_codescan/MipcaActivityCapture;)V

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/example/qr_codescan/MipcaActivityCapture;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finishBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/qr_codescan/MipcaActivityCapture;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method private finishBack()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    const-string v1, "title"

    const-string v2, "quxiao"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    const-string v1, "imgurl"

    const-string v2, "quxiao"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    const-string v1, "price"

    const-string v2, "quxiao"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finish()V

    .line 212
    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 170
    iget-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->setVolumeControlStream(I)V

    .line 172
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 173
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 174
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 180
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 181
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd

    const v2, 0x3dcccccd

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 182
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mining/app/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->decodeFormats:Ljava/util/Vector;

    iget-object v2, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->characterSet:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/example/qr_codescan/MipcaActivityCapture;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :goto_1
    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->vibrate:Z

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 195
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 197
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/mining/app/zxing/view/ViewfinderView;->drawViewfinder()V

    .line 168
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/mining/app/zxing/view/ViewfinderView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/InactivityTimer;->onActivity()V

    .line 96
    invoke-direct {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->playBeepSoundAndVibrate()V

    .line 97
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v0, "Scan failed!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-virtual {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finish()V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finishBack()V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/mining/app/zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 46
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mining/app/zxing/view/ViewfinderView;

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    .line 47
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    new-instance v1, Lcom/example/qr_codescan/MipcaActivityCapture$1;

    invoke-direct {v1, p0}, Lcom/example/qr_codescan/MipcaActivityCapture$1;-><init>(Lcom/example/qr_codescan/MipcaActivityCapture;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->hasSurface:Z

    .line 56
    new-instance v0, Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-direct {v0, p0}, Lcom/mining/app/zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    .line 57
    invoke-virtual {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/InactivityTimer;->shutdown()V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    .line 87
    :cond_0
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->closeDriver()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 63
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 64
    iget-boolean v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->hasSurface:Z

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 70
    :goto_0
    iput-object v3, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->decodeFormats:Ljava/util/Vector;

    .line 71
    iput-object v3, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->characterSet:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->playBeep:Z

    .line 73
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 74
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->playBeep:Z

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/example/qr_codescan/MipcaActivityCapture;->initBeepSound()V

    .line 78
    iput-boolean v2, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->vibrate:Z

    .line 79
    return-void

    .line 67
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->hasSurface:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->hasSurface:Z

    .line 153
    invoke-direct {p0, p1}, Lcom/example/qr_codescan/MipcaActivityCapture;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 155
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture;->hasSurface:Z

    .line 159
    return-void
.end method
