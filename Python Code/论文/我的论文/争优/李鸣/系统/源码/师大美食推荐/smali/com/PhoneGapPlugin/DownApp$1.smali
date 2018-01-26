.class Lcom/PhoneGapPlugin/DownApp$1;
.super Landroid/os/Handler;
.source "DownApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/PhoneGapPlugin/DownApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/PhoneGapPlugin/DownApp;


# direct methods
.method constructor <init>(Lcom/PhoneGapPlugin/DownApp;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const v6, 0x7f080018

    const v5, 0x7f080017

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v0, v0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\uff01"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "0%"

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->len:I
    invoke-static {v2}, Lcom/PhoneGapPlugin/DownApp;->access$100(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->len:I
    invoke-static {v1}, Lcom/PhoneGapPlugin/DownApp;->access$100(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v1

    invoke-virtual {v0, v6, v4, v1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 85
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->manager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$200(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v1}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 86
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->len:I
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$100(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/Down/"

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v2, v2, Lcom/PhoneGapPlugin/DownApp;->in_name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v1}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v2, v2, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    # setter for: Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v2}, Lcom/PhoneGapPlugin/DownApp;->access$302(Lcom/PhoneGapPlugin/DownApp;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 97
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->pIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/PhoneGapPlugin/DownApp;->access$300(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 98
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v0, v0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080019

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->manager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->access$200(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->notif:Landroid/app/Notification;
    invoke-static {v1}, Lcom/PhoneGapPlugin/DownApp;->access$000(Lcom/PhoneGapPlugin/DownApp;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v0, v0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/PhoneGapPlugin/DownApp;->collapseStatusBar(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$1;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v0, v0, Lcom/PhoneGapPlugin/DownApp;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
