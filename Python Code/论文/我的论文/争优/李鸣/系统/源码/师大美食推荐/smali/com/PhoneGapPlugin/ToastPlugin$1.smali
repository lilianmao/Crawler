.class Lcom/PhoneGapPlugin/ToastPlugin$1;
.super Ljava/lang/Object;
.source "ToastPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/PhoneGapPlugin/ToastPlugin;->toast(Ljava/lang/String;ILorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/PhoneGapPlugin/ToastPlugin;

.field final synthetic val$cordova:Lorg/apache/cordova/api/CordovaInterface;

.field final synthetic val$length:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/PhoneGapPlugin/ToastPlugin;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->this$0:Lcom/PhoneGapPlugin/ToastPlugin;

    iput-object p2, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    iput-object p3, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/PhoneGapPlugin/ToastPlugin$1;->val$length:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method
