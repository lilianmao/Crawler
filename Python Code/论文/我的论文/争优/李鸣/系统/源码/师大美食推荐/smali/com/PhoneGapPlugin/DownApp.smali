.class public Lcom/PhoneGapPlugin/DownApp;
.super Lorg/apache/cordova/api/Plugin;
.source "DownApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/PhoneGapPlugin/DownApp$down;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "downApp"


# instance fields
.field private downLoadFileSize:I

.field private fileSize:I

.field private handler:Landroid/os/Handler;

.field in_name:Ljava/lang/String;

.field private len:I

.field loadUrl:Ljava/lang/String;

.field private manager:Landroid/app/NotificationManager;

.field name:Ljava/lang/String;

.field private notif:Landroid/app/Notification;

.field private pIntent:Landroid/app/PendingIntent;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->name:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->in_name:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/PhoneGapPlugin/DownApp$1;

    invoke-direct {v0, p0}, Lcom/PhoneGapPlugin/DownApp$1;-><init>(Lcom/PhoneGapPlugin/DownApp;)V

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->handler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Lcom/PhoneGapPlugin/DownApp;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/PhoneGapPlugin/DownApp;->len:I

    return v0
.end method

.method static synthetic access$102(Lcom/PhoneGapPlugin/DownApp;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/PhoneGapPlugin/DownApp;->len:I

    return p1
.end method

.method static synthetic access$200(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/PhoneGapPlugin/DownApp;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/PhoneGapPlugin/DownApp;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/PhoneGapPlugin/DownApp;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I

    return p1
.end method

.method static synthetic access$412(Lcom/PhoneGapPlugin/DownApp;I)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/PhoneGapPlugin/DownApp;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/PhoneGapPlugin/DownApp;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/PhoneGapPlugin/DownApp;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/PhoneGapPlugin/DownApp;->fileSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/PhoneGapPlugin/DownApp;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/PhoneGapPlugin/DownApp;->fileSize:I

    return p1
.end method

.method public static collapseStatusBar(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 222
    :try_start_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "collapse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_1
    return-void

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "collapsePanels"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendMsg(I)V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 217
    iput p1, v0, Landroid/os/Message;->what:I

    .line 218
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 3

    .prologue
    .line 48
    const-string v0, "downApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "/mnt/sdcard/bbaaabddhc"

    invoke-static {v0, v1}, Lcom/PhoneGapPlugin/CleanCache;->cleanApplicationData(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->name:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->in_name:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/DownApp;->noti()V

    .line 55
    new-instance v0, Lcom/PhoneGapPlugin/DownApp$down;

    invoke-direct {v0, p0}, Lcom/PhoneGapPlugin/DownApp$down;-><init>(Lcom/PhoneGapPlugin/DownApp;)V

    invoke-virtual {v0}, Lcom/PhoneGapPlugin/DownApp$down;->start()V

    .line 56
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noti()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->manager:Landroid/app/NotificationManager;

    .line 120
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    .line 121
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    const/high16 v1, 0x7f020000

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 122
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0..."

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 123
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 125
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080016

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540d\u79f0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/PhoneGapPlugin/DownApp;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;

    .line 130
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 131
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 132
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 133
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp;->manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    return-void
.end method
