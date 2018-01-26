.class public Lcom/PhoneGapPlugin/OpenPageActivity;
.super Lorg/apache/cordova/DroidGap;
.source "OpenPageActivity.java"


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static isForeground:Z


# instance fields
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
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/PhoneGapPlugin/OpenPageActivity;->isForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/PhoneGapPlugin/OpenPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private file()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Lcom/PhoneGapPlugin/OpenPageActivity$1;

    invoke-direct {v1, p0}, Lcom/PhoneGapPlugin/OpenPageActivity$1;-><init>(Lcom/PhoneGapPlugin/OpenPageActivity;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 88
    if-eq p1, v2, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    :cond_1
    if-ne p1, v2, :cond_5

    .line 93
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_3

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 95
    :cond_3
    if-eqz p3, :cond_4

    if-eq p2, v3, :cond_6

    :cond_4
    move-object v0, v1

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 98
    iput-object v1, p0, Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 100
    :cond_5
    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/OpenPageActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "img"

    const-string v1, "houtui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onBackPressed()V

    .line 47
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/OpenPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    const-string v1, "openpage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, ""

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 29
    const-string v1, "mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/PhoneGapPlugin/OpenPageActivity;->file()V

    .line 40
    return-void

    .line 34
    :cond_0
    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/OpenPageActivity;->finish()V

    goto :goto_0
.end method
