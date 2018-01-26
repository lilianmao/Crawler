.class Lcom/quickapp/bbaaabddhc/MainActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quickapp/bbaaabddhc/MainActivity;->file()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quickapp/bbaaabddhc/MainActivity;


# direct methods
.method constructor <init>(Lcom/quickapp/bbaaabddhc/MainActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

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
    .line 202
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    # setter for: Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/quickapp/bbaaabddhc/MainActivity;->access$002(Lcom/quickapp/bbaaabddhc/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/quickapp/bbaaabddhc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
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
    .line 192
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    # setter for: Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/quickapp/bbaaabddhc/MainActivity;->access$002(Lcom/quickapp/bbaaabddhc/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/quickapp/bbaaabddhc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
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
    .line 182
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    # setter for: Lcom/quickapp/bbaaabddhc/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/quickapp/bbaaabddhc/MainActivity;->access$002(Lcom/quickapp/bbaaabddhc/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/quickapp/bbaaabddhc/MainActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/MainActivity;

    const-string v2, "\u5b8c\u6210\u64cd\u4f5c\u9700\u8981\u4f7f\u7528"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/quickapp/bbaaabddhc/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method
