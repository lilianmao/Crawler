.class public final Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 44
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 49
    iput p2, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    .line 50
    iput p3, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    .line 51
    iput p4, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->left:I

    .line 52
    iput p5, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->top:I

    .line 53
    return-void
.end method


# virtual methods
.method public getDataHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v3

    .line 72
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v4

    .line 76
    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v4, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    mul-int v5, v3, v4

    .line 81
    new-array v0, v5, [B

    .line 82
    iget v2, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v6, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v2, v6

    .line 85
    iget v6, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v3, v6, :cond_2

    .line 86
    iget-object v3, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 92
    :goto_1
    if-ge v1, v4, :cond_0

    .line 93
    mul-int v6, v1, v3

    .line 94
    invoke-static {v5, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v6, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v6

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 4

    .prologue
    .line 57
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 61
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v1, v0, :cond_3

    .line 62
    :cond_2
    new-array p2, v0, [B

    .line 64
    :cond_3
    iget v1, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v1, v2

    .line 65
    iget-object v2, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v3

    .line 115
    invoke-virtual {p0}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    .line 116
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 117
    iget-object v6, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 118
    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v4, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v0, v4

    move v4, v2

    move v5, v0

    .line 120
    :goto_0
    if-ge v4, v7, :cond_1

    .line 121
    mul-int v8, v4, v3

    move v0, v2

    .line 122
    :goto_1
    if-ge v0, v3, :cond_0

    .line 123
    add-int v9, v5, v0

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    .line 124
    add-int v10, v8, v0

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int/2addr v9, v12

    or-int/2addr v9, v11

    aput v9, v1, v10

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_0
    iget v0, p0, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v0

    .line 120
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 130
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 131
    return-object v0
.end method
