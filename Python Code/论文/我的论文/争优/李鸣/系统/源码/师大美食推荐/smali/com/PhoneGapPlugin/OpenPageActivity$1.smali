.class Lcom/PhoneGapPlugin/OpenPageActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "OpenPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/PhoneGapPlugin/OpenPageActivity;->file()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/PhoneGapPlugin/OpenPageActivity;


# direct methods
.method constructor <init>(Lcom/PhoneGapPlugin/OpenPageActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    # setter for: Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/PhoneGapPlugin/OpenPageActivity;->access$002(Lcom/PhoneGapPlugin/OpenPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/PhoneGapPlugin/OpenPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    # setter for: Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/PhoneGapPlugin/OpenPageActivity;->access$002(Lcom/PhoneGapPlugin/OpenPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/PhoneGapPlugin/OpenPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    # setter for: Lcom/PhoneGapPlugin/OpenPageActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/PhoneGapPlugin/OpenPageActivity;->access$002(Lcom/PhoneGapPlugin/OpenPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/PhoneGapPlugin/OpenPageActivity$1;->this$0:Lcom/PhoneGapPlugin/OpenPageActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/PhoneGapPlugin/OpenPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method
