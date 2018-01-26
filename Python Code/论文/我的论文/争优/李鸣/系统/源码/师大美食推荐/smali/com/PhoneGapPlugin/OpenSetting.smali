.class public Lcom/PhoneGapPlugin/OpenSetting;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "OpenSetting.java"


# instance fields
.field private ACTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 10
    const-string v0, "open"

    iput-object v0, p0, Lcom/PhoneGapPlugin/OpenSetting;->ACTION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 16
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenSetting;->ACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenSetting;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 26
    :cond_0
    :goto_0
    return v3

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenSetting;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_0
.end method
