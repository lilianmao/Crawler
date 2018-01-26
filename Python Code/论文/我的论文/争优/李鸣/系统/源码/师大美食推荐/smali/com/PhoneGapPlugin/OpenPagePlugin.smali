.class public Lcom/PhoneGapPlugin/OpenPagePlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "OpenPagePlugin.java"


# static fields
.field private static ACTION:Ljava/lang/String;


# instance fields
.field private saveurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "openPage"

    sput-object v0, Lcom/PhoneGapPlugin/OpenPagePlugin;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->saveurl:Ljava/lang/String;

    return-void
.end method

.method private down(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 124
    :try_start_0
    invoke-static {p1}, Lcom/PhoneGapPlugin/MD532;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/bbaaabddhc/edit/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard/bbaaabddhc/edit/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 132
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 135
    const v3, 0x8000

    new-array v3, v3, [B

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    .line 138
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 140
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v0, ""

    :goto_1
    return-object v0

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private geturl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/errorLog/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/mnt/sdcard/errorLog/serverURL.txt"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 105
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "error"

    .line 120
    :goto_2
    return-object v0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private startIntent(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.PhoneGapPlugin.OpenPageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "openpage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 24
    sget-object v0, Lcom/PhoneGapPlugin/OpenPagePlugin;->ACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loadUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->saveurl:Ljava/lang/String;

    .line 31
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard/bbaaaajged/edit/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard/bbaaaajged/edit/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    invoke-static {v0, v1}, Lcom/PhoneGapPlugin/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?from=app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->saveurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/PhoneGapPlugin/OpenPagePlugin;->startIntent(Ljava/lang/String;)Z

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 69
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v0

    :goto_1
    return v0

    .line 43
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sd\u5361\u4e0d\u5b58\u5728\u8be5\u9875\u9762\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 46
    :cond_4
    const-string v1, "quickapp.cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 47
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&loadUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->saveurl:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "?from=app"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :try_start_0
    invoke-direct {p0, v0}, Lcom/PhoneGapPlugin/OpenPagePlugin;->geturl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u4e0b\u8f7d\u8def\u5f84\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 49
    :cond_5
    const-string v0, "&from=app"

    goto :goto_2

    .line 57
    :cond_6
    :try_start_1
    invoke-direct {p0, v1}, Lcom/PhoneGapPlugin/OpenPagePlugin;->down(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?from=app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/PhoneGapPlugin/OpenPagePlugin;->saveurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/PhoneGapPlugin/OpenPagePlugin;->startIntent(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u4e0b\u8f7d\u8def\u5f84\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v0

    goto/16 :goto_1

    .line 65
    :cond_7
    invoke-direct {p0, v0}, Lcom/PhoneGapPlugin/OpenPagePlugin;->startIntent(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
