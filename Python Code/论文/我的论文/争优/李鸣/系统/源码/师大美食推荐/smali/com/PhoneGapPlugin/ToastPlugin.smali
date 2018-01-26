.class public Lcom/PhoneGapPlugin/ToastPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "ToastPlugin.java"


# static fields
.field public static TOAST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "toast"

    sput-object v0, Lcom/PhoneGapPlugin/ToastPlugin;->TOAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    sget-object v0, Lcom/PhoneGapPlugin/ToastPlugin;->TOAST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/PhoneGapPlugin/ToastPlugin;->TOAST:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/PhoneGapPlugin/ToastPlugin;->toast(Ljava/lang/String;ILorg/apache/cordova/api/CallbackContext;)V

    .line 17
    :cond_0
    return v3
.end method

.method public declared-synchronized toast(Ljava/lang/String;ILorg/apache/cordova/api/CallbackContext;)V
    .locals 2

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/PhoneGapPlugin/ToastPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 22
    new-instance v1, Lcom/PhoneGapPlugin/ToastPlugin$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/PhoneGapPlugin/ToastPlugin$1;-><init>(Lcom/PhoneGapPlugin/ToastPlugin;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;I)V

    .line 27
    iget-object v0, p0, Lcom/PhoneGapPlugin/ToastPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
