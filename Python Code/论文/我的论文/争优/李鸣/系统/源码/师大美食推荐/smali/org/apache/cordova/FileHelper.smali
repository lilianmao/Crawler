.class public Lorg/apache/cordova/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/io/InputStream;
    .locals 4
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v2, "content"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 98
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 94
    :cond_0
    const-string v2, "file:///android_asset/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "relativePath":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v0    # "relativePath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {p0, p1}, Lorg/apache/cordova/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    .locals 6
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "content://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 131
    :cond_0
    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "encodedUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "extension":Ljava/lang/String;
    const-string v4, "3ga"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    const-string v2, "audio/3gpp"

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/cordova/FileHelper;->getRealPath(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRealPath(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    .locals 11
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    const/4 v8, 0x0

    .line 48
    .local v8, "realPath":Ljava/lang/String;
    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 50
    .local v2, "proj":[Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 52
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    if-nez v8, :cond_0

    .line 55
    const-string v0, "FileUtils"

    const-string v1, "Could get real path for URI string %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p0, v3, v9

    invoke-static {v0, v1, v3}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 57
    :cond_1
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 59
    const-string v0, "/android_asset/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "FileUtils"

    const-string v1, "Cannot get real path for URI string %s because it is a file:///android_asset/ URI."

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p0, v3, v9

    invoke-static {v0, v1, v3}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v8, 0x0

    goto :goto_0

    .line 64
    :cond_2
    move-object v8, p0

    goto :goto_0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_0
    return-object p0
.end method
