.class public final Lcom/mining/app/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_WIDTH:I = 0xa

.field private static final MIDDLE_LINE_PADDING:I = 0x5

.field private static final MIDDLE_LINE_WIDTH:I = 0x6

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "log"

.field private static final TEXT_PADDING_TOP:I = 0x1e

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field private ScreenRate:I

.field isFirst:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    .line 42
    const/high16 v0, 0x41a00000

    sget v1, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->maskColor:I

    .line 46
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultColor:I

    .line 47
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 49
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->invalidate()V

    .line 132
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->invalidate()V

    .line 128
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 53
    if-nez v8, :cond_0

    .line 124
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->isFirst:Z

    if-nez v0, :cond_1

    .line 57
    iput-boolean v11, p0, Lcom/mining/app/zxing/view/ViewfinderView;->isFirst:Z

    .line 58
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 59
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideBottom:I

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 63
    iget-object v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 63
    :cond_2
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 90
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4

    .line 91
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 93
    :cond_4
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v3, v0

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000

    sget v2, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const-string v1, "System"

    invoke-static {v1, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000

    sget v4, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 100
    iget-object v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 113
    :cond_5
    if-eqz v1, :cond_7

    .line 114
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPoint;

    .line 117
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x40400000

    iget-object v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 104
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 105
    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 106
    iget-object v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPoint;

    .line 109
    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x40c00000

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 121
    :cond_7
    const-wide/16 v1, 0xa

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mining/app/zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
