.class public Lorg/apache/cordova/InAppBrowser$InAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 546
    const-string v3, "InAppBrowser"

    const-string v4, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    # getter for: Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J
    invoke-static {v3}, Lorg/apache/cordova/InAppBrowser;->access$1000(Lorg/apache/cordova/InAppBrowser;)J

    move-result-wide v3

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 551
    move-wide v1, p5

    .line 552
    .local v1, "newQuota":J
    const-string v3, "InAppBrowser"

    const-string v4, "calling quotaUpdater.updateQuota newQuota: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    move-object/from16 v0, p9

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 561
    .end local v1    # "newQuota":J
    :goto_0
    return-void

    .line 559
    :cond_0
    move-object/from16 v0, p9

    invoke-interface {v0, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 571
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 572
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 573
    return-void
.end method
