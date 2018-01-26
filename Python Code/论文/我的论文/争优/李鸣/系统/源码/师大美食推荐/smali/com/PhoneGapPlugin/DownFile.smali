.class public Lcom/PhoneGapPlugin/DownFile;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "DownFile.java"


# static fields
.field public static ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "downFile"

    sput-object v0, Lcom/PhoneGapPlugin/DownFile;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    .line 21
    sget-object v0, Lcom/PhoneGapPlugin/DownFile;->ACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v5, "/mnt/sdcard/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 26
    invoke-static {v0, v3}, Lcom/PhoneGapPlugin/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 57
    :goto_0
    return v1

    .line 32
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    const-string v7, "GBK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v7, "ISO8859_1"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 35
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 38
    const v5, 0x19000

    new-array v5, v5, [B

    .line 39
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 42
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    move v0, v2

    :goto_2
    move v1, v0

    .line 57
    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 45
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 46
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 53
    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_2
.end method
