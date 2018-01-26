.class public Lcom/example/jpushdemo/TestActivity;
.super Lorg/apache/cordova/DroidGap;
.source "TestActivity.java"


# static fields
.field public static instanceActivity:Lcom/example/jpushdemo/TestActivity;


# instance fields
.field private handler:Landroid/os/Handler;

.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/example/jpushdemo/TestActivity;->instanceActivity:Lcom/example/jpushdemo/TestActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/example/jpushdemo/TestActivity;->s:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/example/jpushdemo/TestActivity$2;

    invoke-direct {v0, p0}, Lcom/example/jpushdemo/TestActivity$2;-><init>(Lcom/example/jpushdemo/TestActivity;)V

    iput-object v0, p0, Lcom/example/jpushdemo/TestActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/example/jpushdemo/TestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/example/jpushdemo/TestActivity;->geturl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/jpushdemo/TestActivity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/example/jpushdemo/TestActivity;->catchError()V

    return-void
.end method

.method static synthetic access$200(Lcom/example/jpushdemo/TestActivity;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/example/jpushdemo/TestActivity;->downloadUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/example/jpushdemo/TestActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private catchError()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "file:///android_asset/pakage/chinaecs_app_default.html"

    invoke-virtual {p0, v0}, Lcom/example/jpushdemo/TestActivity;->loadUrl(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private downloadUrl(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/bbaaabddhc/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v0, "/mnt/sdcard/bbaaabddhc/"

    const-string v3, "push.html"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 116
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 119
    const v3, 0x8000

    new-array v3, v3, [B

    .line 121
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 123
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-direct {p0}, Lcom/example/jpushdemo/TestActivity;->catchError()V

    move v0, v1

    .line 131
    :goto_1
    return v0

    .line 125
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private geturl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 80
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    :goto_0
    const-string v2, "error"

    if-eq v1, v2, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 101
    const-string v1, "error"

    .line 102
    invoke-direct {p0}, Lcom/example/jpushdemo/TestActivity;->catchError()V

    .line 105
    :cond_0
    :goto_2
    return-object v1

    .line 84
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 85
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const-string v1, "error"

    goto :goto_0

    .line 97
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 84
    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    sput-object p0, Lcom/example/jpushdemo/TestActivity;->instanceActivity:Lcom/example/jpushdemo/TestActivity;

    .line 25
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v0, Lcom/quickapp/bbaaabddhc/MainActivity;->instance:Lcom/quickapp/bbaaabddhc/MainActivity;

    if-eqz v0, :cond_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/example/jpushdemo/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/example/jpushdemo/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    sget-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/jpushdemo/TestActivity;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_1
    :goto_0
    new-instance v0, Lcom/example/jpushdemo/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/example/jpushdemo/TestActivity$1;-><init>(Lcom/example/jpushdemo/TestActivity;)V

    invoke-virtual {v0}, Lcom/example/jpushdemo/TestActivity$1;->start()V

    .line 64
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-direct {p0}, Lcom/example/jpushdemo/TestActivity;->catchError()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/example/jpushdemo/TestActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 73
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/example/jpushdemo/TestActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 68
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 69
    return-void
.end method
