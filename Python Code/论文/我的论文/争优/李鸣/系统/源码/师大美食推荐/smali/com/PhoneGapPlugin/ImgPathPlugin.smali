.class public Lcom/PhoneGapPlugin/ImgPathPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "ImgPathPlugin.java"


# static fields
.field private static ACTION:Ljava/lang/String;


# instance fields
.field filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "getRealPath"

    sput-object v0, Lcom/PhoneGapPlugin/ImgPathPlugin;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

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
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 23
    sget-object v0, Lcom/PhoneGapPlugin/ImgPathPlugin;->ACTION:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 27
    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return v10

    .line 31
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    const/16 v2, 0x13

    if-ge v0, v2, :cond_2

    .line 36
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 38
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    .line 56
    new-array v6, v10, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v6, v11

    .line 58
    const-string v7, "_id=?"

    .line 60
    iget-object v1, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v8, v10, [Ljava/lang/String;

    aput-object v0, v8, v11

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    aget-object v1, v6, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    .line 70
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_4
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 75
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 79
    const-string v2, "img"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/PhoneGapPlugin/ImgPathPlugin;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
