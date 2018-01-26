.class public Lcom/PhoneGapPlugin/CutImgPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "CutImgPlugin.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cutimg"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private idCorp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 13
    const-string v0, "bbaaabddhc"

    iput-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->idCorp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    const-string v0, "cutimg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 20
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 21
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 22
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 23
    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 24
    const/4 v6, 0x6

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->idCorp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/temp/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 26
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 28
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-static {v0}, Lcom/PhoneGapPlugin/ImgUtils;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    iget-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v5}, Lcom/PhoneGapPlugin/ImgUtils;->rotateImg(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    .line 33
    iget-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/PhoneGapPlugin/ImgUtils;->ImageCrop(Landroid/graphics/Bitmap;IIIILjava/lang/Double;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    iget-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/PhoneGapPlugin/ImgUtils;->comp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    iget-object v0, p0, Lcom/PhoneGapPlugin/CutImgPlugin;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/PhoneGapPlugin/ImgUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 40
    :cond_1
    const-string v0, "\u5207\u56fe\u5931\u8d25"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "\u5207\u56fe\u5931\u8d25"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method
