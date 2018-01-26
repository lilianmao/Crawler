.class public Lcom/quickapp/bbaaabddhc/MainActivity;
.super Lorg/apache/cordova/DroidGap;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION"

.field public static instance:Lcom/quickapp/bbaaabddhc/MainActivity;

.field public static isForeground:Z


# instance fields
.field private mMessageReceiver:Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quickapp/bbaaabddhc/MainActivity;->isForeground:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/quickapp/bbaaabddhc/MainActivity;->instance:Lcom/quickapp/bbaaabddhc/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 162
    return-void
.end method

.method private CopyAssets(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 91
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :cond_0
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_6

    .line 98
    :try_start_1
    aget-object v1, v2, v0

    .line 99
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/quickapp/bbaaabddhc/MainActivity;->CopyAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/quickapp/bbaaabddhc/MainActivity;->CopyAssets(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 108
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 112
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 116
    :goto_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 119
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5

    .line 120
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 126
    :catch_1
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 115
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 88
    :catch_2
    move-exception v0

    .line 130
    :cond_6
    return-void
.end method

.method static synthetic access$002(Lcom/quickapp/bbaaabddhc/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private file()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Lcom/quickapp/bbaaabddhc/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/quickapp/bbaaabddhc/MainActivity$1;-><init>(Lcom/quickapp/bbaaabddhc/MainActivity;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 211
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 215
    if-eq p1, v2, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    :cond_1
    if-ne p1, v2, :cond_5

    .line 219
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_3

    .line 229
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    if-eqz p3, :cond_4

    if-eq p2, v3, :cond_6

    :cond_4
    move-object v0, v1

    .line 223
    :goto_1
    iget-object v2, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 224
    iput-object v1, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 226
    :cond_5
    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->finish()V

    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x9c4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->manager:Landroid/app/NotificationManager;

    .line 37
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 41
    :cond_0
    sput-object p0, Lcom/quickapp/bbaaabddhc/MainActivity;->instance:Lcom/quickapp/bbaaabddhc/MainActivity;

    .line 42
    const-string v0, "loadUrlTimeoutValue"

    const v1, 0x927c0

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 43
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "splashscreen"

    const v1, 0x7f020006

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 47
    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/bbaaabddhc/version/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v2, "/data/data/com.quickapp.bbaaabddhc/app_database/"

    .line 55
    new-instance v3, Ljava/io/File;

    const-string v4, "Database_app.db"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    :cond_1
    const-string v0, "file:///android_asset/pakage/chinaecs_app_default.html"

    invoke-super {p0, v0, v7}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 59
    invoke-direct {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->file()V

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 63
    :cond_2
    const-string v0, "/mnt/sdcard/bbaaabddhc/"

    invoke-static {v0}, Lcom/PhoneGapPlugin/FileUtils;->deleteFolder(Ljava/lang/String;)V

    .line 64
    const-string v0, "pakage"

    const-string v1, "/mnt/sdcard/bbaaabddhc/"

    invoke-direct {p0, v0, v1}, Lcom/quickapp/bbaaabddhc/MainActivity;->CopyAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/bbaaabddhc/"

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_1
    const-string v0, "bbaaabddhc"

    invoke-static {v0}, Lcom/PhoneGapPlugin/FileUtils;->firstOpen(Ljava/lang/String;)V

    .line 71
    const-string v0, "version"

    const-string v1, "/mnt/sdcard/bbaaabddhc/version/"

    invoke-direct {p0, v0, v1}, Lcom/quickapp/bbaaabddhc/MainActivity;->CopyAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v6}, Lcom/quickapp/bbaaabddhc/MainActivity;->setResult(I)V

    .line 81
    :goto_2
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->registerMessageReceiver()V

    .line 82
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 83
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    :cond_3
    const-string v0, "/mnt/sdcard/bbaaabddhc/temp/"

    invoke-static {v0}, Lcom/PhoneGapPlugin/FileUtils;->deleteFolder(Ljava/lang/String;)V

    .line 77
    const-string v0, "file:///android_asset/pakage/chinaecs_app_default.html"

    invoke-super {p0, v0, v7}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 78
    invoke-direct {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->file()V

    .line 79
    invoke-virtual {p0, v6}, Lcom/quickapp/bbaaabddhc/MainActivity;->setResult(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mMessageReceiver:Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;

    invoke-virtual {p0, v0}, Lcom/quickapp/bbaaabddhc/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 149
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quickapp/bbaaabddhc/MainActivity;->isForeground:Z

    .line 143
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/quickapp/bbaaabddhc/MainActivity;->isForeground:Z

    .line 135
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 136
    return-void
.end method

.method public registerMessageReceiver()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;

    invoke-direct {v0, p0}, Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;-><init>(Lcom/quickapp/bbaaabddhc/MainActivity;)V

    iput-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mMessageReceiver:Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 159
    const-string v1, "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/quickapp/bbaaabddhc/MainActivity;->mMessageReceiver:Lcom/quickapp/bbaaabddhc/MainActivity$MessageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quickapp/bbaaabddhc/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method
