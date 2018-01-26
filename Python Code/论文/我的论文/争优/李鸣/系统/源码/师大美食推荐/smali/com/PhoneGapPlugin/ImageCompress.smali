.class public Lcom/PhoneGapPlugin/ImageCompress;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "ImageCompress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;
    }
.end annotation


# static fields
.field private static ACTION:Ljava/lang/String; = null

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final FILE:Ljava/lang/String; = "file"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "compress"

    sput-object v0, Lcom/PhoneGapPlugin/ImageCompress;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 94
    return-void
.end method

.method private compressFile(Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->destFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v1, p1, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->imgFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p1, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->quality:I

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 172
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v2, "ImageCompress"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static findBestSampleSize(IIII)I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 176
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 177
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 178
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 179
    const/high16 v0, 0x3f800000

    .line 180
    :goto_0
    mul-float v3, v0, v6

    float-to-double v3, v3

    cmpg-double v3, v3, v1

    if-gtz v3, :cond_0

    .line 181
    mul-float/2addr v0, v6

    goto :goto_0

    .line 184
    :cond_0
    float-to-int v0, v0

    return v0
.end method

.method private getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 216
    .line 218
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 223
    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v3

    .line 228
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 233
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_3
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getResizedDimension(IIII)I
    .locals 6

    .prologue
    .line 190
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    .line 210
    :cond_0
    :goto_0
    return p0

    .line 196
    :cond_1
    if-nez p0, :cond_2

    .line 197
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 198
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    .line 201
    :cond_2
    if-eqz p1, :cond_0

    .line 205
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 207
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 208
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method

.method public static saveBitmap2file(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 77
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 78
    const/16 v3, 0x64

    .line 79
    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public compressFromUri(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 115
    new-instance v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;

    invoke-direct {v2}, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;-><init>()V

    .line 116
    iput p1, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxWidth:I

    .line 117
    iput p2, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxHeight:I

    .line 120
    if-nez p3, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 129
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 131
    iget v4, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxWidth:I

    iget v5, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxHeight:I

    invoke-static {v4, v5, v1, v3}, Lcom/PhoneGapPlugin/ImageCompress;->getResizedDimension(IIII)I

    move-result v4

    .line 133
    iget v5, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxHeight:I

    iget v6, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxWidth:I

    invoke-static {v5, v6, v3, v1}, Lcom/PhoneGapPlugin/ImageCompress;->getResizedDimension(IIII)I

    move-result v5

    .line 136
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    invoke-static {v1, v3, v4, v5}, Lcom/PhoneGapPlugin/ImageCompress;->findBestSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 146
    :cond_2
    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 154
    :cond_3
    iget-object v1, v2, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->destFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, v2, v0}, Lcom/PhoneGapPlugin/ImageCompress;->compressFile(Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    const-string v2, ""

    .line 33
    sget-object v4, Lcom/PhoneGapPlugin/ImageCompress;->ACTION:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    div-long/2addr v3, v5

    .line 39
    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 42
    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 70
    :goto_0
    return v0

    .line 47
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    iget-object v4, p0, Lcom/PhoneGapPlugin/ImageCompress;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 53
    invoke-virtual {p0, v4, v3, v2}, Lcom/PhoneGapPlugin/ImageCompress;->compressFromUri(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 54
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v5, "img"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/down/img/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/down/img/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/PhoneGapPlugin/ImageCompress;->saveBitmap2file(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v4

    .line 65
    :goto_1
    if-eqz v4, :cond_2

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/down/img"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_2
    const-string v0, "\u538b\u7f29\u5931\u8d25"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    move v0, v1

    .line 70
    goto/16 :goto_0

    :cond_3
    move v4, v1

    goto :goto_1
.end method
