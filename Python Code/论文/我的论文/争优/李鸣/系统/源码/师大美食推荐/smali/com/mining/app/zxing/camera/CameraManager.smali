.class public final Lcom/mining/app/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x280

.field private static final MAX_FRAME_WIDTH:I = 0x280

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/mining/app/zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/mining/app/zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mining/app/zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 52
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    sput v0, Lcom/mining/app/zxing/camera/CameraManager;->SDK_INT:I

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/mining/app/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    .line 106
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 108
    new-instance v0, Lcom/mining/app/zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/mining/app/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/mining/app/zxing/camera/PreviewCallback;-><init>(Lcom/mining/app/zxing/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

    .line 109
    new-instance v0, Lcom/mining/app/zxing/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/mining/app/zxing/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->autoFocusCallback:Lcom/mining/app/zxing/camera/AutoFocusCallback;

    .line 110
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/mining/app/zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/mining/app/zxing/camera/CameraManager;->cameraManager:Lcom/mining/app/zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/mining/app/zxing/camera/CameraManager;->cameraManager:Lcom/mining/app/zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mining/app/zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/mining/app/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mining/app/zxing/camera/CameraManager;->cameraManager:Lcom/mining/app/zxing/camera/CameraManager;

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;
    .locals 8

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v1

    .line 299
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v0

    .line 300
    iget-object v2, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v2

    .line 301
    packed-switch v0, :pswitch_data_0

    .line 313
    const-string v3, "yuv420p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    new-instance v0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 308
    :pswitch_0
    new-instance v0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported picture format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mining/app/zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 148
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 151
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/16 v2, 0x280

    const/16 v1, 0xf0

    .line 219
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v4

    .line 220
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget v0, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 225
    if-ge v0, v1, :cond_3

    move v0, v1

    .line 230
    :cond_1
    :goto_1
    iget v3, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 231
    if-ge v3, v1, :cond_4

    .line 236
    :goto_2
    iget v2, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 237
    iget v3, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 238
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 239
    sget-object v0, Lcom/mining/app/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 227
    :cond_3
    if-le v0, v2, :cond_1

    move v0, v2

    .line 228
    goto :goto_1

    .line 233
    :cond_4
    if-le v3, v2, :cond_5

    move v1, v2

    .line 234
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 251
    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 258
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 259
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 260
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 261
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 262
    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 120
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 121
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 126
    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->initialized:Z

    .line 128
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->configManager:Lcom/mining/app/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/mining/app/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 138
    invoke-static {}, Lcom/mining/app/zxing/camera/FlashlightManager;->enableFlashlight()V

    .line 140
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->autoFocusCallback:Lcom/mining/app/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/mining/app/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 207
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->autoFocusCallback:Lcom/mining/app/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 209
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/mining/app/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 189
    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    .line 161
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 172
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewCallback:Lcom/mining/app/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/mining/app/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 173
    iget-object v0, p0, Lcom/mining/app/zxing/camera/CameraManager;->autoFocusCallback:Lcom/mining/app/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/mining/app/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 174
    iput-boolean v1, p0, Lcom/mining/app/zxing/camera/CameraManager;->previewing:Z

    .line 176
    :cond_1
    return-void
.end method
