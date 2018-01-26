.class Lcom/quickapp/bbaaabddhc/OutActivity$1;
.super Landroid/webkit/WebViewClient;
.source "OutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quickapp/bbaaabddhc/OutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quickapp/bbaaabddhc/OutActivity;


# direct methods
.method constructor <init>(Lcom/quickapp/bbaaabddhc/OutActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/quickapp/bbaaabddhc/OutActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/OutActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/OutActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/OutActivity;

    # getter for: Lcom/quickapp/bbaaabddhc/OutActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/quickapp/bbaaabddhc/OutActivity;->access$000(Lcom/quickapp/bbaaabddhc/OutActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/quickapp/bbaaabddhc/OutActivity$1$1;

    invoke-direct {v1, p0}, Lcom/quickapp/bbaaabddhc/OutActivity$1$1;-><init>(Lcom/quickapp/bbaaabddhc/OutActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method
