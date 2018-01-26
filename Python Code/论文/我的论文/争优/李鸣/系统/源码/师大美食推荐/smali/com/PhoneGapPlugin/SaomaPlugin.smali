.class public Lcom/PhoneGapPlugin/SaomaPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SaomaPlugin.java"


# static fields
.field private static ACTION:Ljava/lang/String; = null

.field private static final SCANNIN_GREQUEST_CODE:I = 0x1


# instance fields
.field private imgurl:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "saoma"

    sput-object v0, Lcom/PhoneGapPlugin/SaomaPlugin;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->imgurl:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->price:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 23
    sget-object v2, Lcom/PhoneGapPlugin/SaomaPlugin;->ACTION:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    const-string v2, ""

    iput-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->imgurl:Ljava/lang/String;

    .line 26
    const-string v2, ""

    iput-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->price:Ljava/lang/String;

    .line 27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 28
    iget-object v3, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    const-string v4, "result"

    const-string v5, "from main"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v4, "bitmap"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    iget-object v3, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3, p0, v2, v1}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 38
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 46
    const-string v1, "\u672a\u83b7\u53d6\u5546\u54c1\u4fe1\u606f"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 67
    :goto_1
    return v0

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    const-string v3, "quxiao"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_1
    const-string v0, "title"

    iget-object v3, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v0, "imgurl"

    iget-object v3, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->imgurl:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "price"

    iget-object v3, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->price:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_2
    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    move v0, v1

    .line 60
    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 62
    :cond_2
    const-string v1, "\u53d6\u6d88\u4e86\u626b\u7801\u64cd\u4f5c"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_3
    const-string v1, "error"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 80
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->title:Ljava/lang/String;

    .line 83
    const-string v1, "imgurl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->imgurl:Ljava/lang/String;

    .line 84
    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/PhoneGapPlugin/SaomaPlugin;->price:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
