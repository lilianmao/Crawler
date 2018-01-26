.class public Lcom/PhoneGapPlugin/CloseAppPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "CloseAppPlugin.java"


# static fields
.field public static TOAST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "closeApp"

    sput-object v0, Lcom/PhoneGapPlugin/CloseAppPlugin;->TOAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 16
    sget-object v0, Lcom/PhoneGapPlugin/CloseAppPlugin;->TOAST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/PhoneGapPlugin/CloseAppPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 25
    const-string v0, "success"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 30
    :cond_0
    return v3
.end method
