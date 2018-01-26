.class public Lcom/quickapp/bbaaabddhc/OutActivity;
.super Landroid/app/Activity;
.source "OutActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private progressBar:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/quickapp/bbaaabddhc/OutActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/OutActivity;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0, v3}, Lcom/quickapp/bbaaabddhc/OutActivity;->requestWindowFeature(I)Z

    .line 21
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/quickapp/bbaaabddhc/OutActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/quickapp/bbaaabddhc/OutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    const-string v1, "OutSideUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/quickapp/bbaaabddhc/OutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 28
    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u9875\u9762"

    const-string v3, "loading..."

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/quickapp/bbaaabddhc/OutActivity;->progressBar:Landroid/app/ProgressDialog;

    .line 29
    new-instance v2, Lcom/quickapp/bbaaabddhc/OutActivity$1;

    invoke-direct {v2, p0}, Lcom/quickapp/bbaaabddhc/OutActivity$1;-><init>(Lcom/quickapp/bbaaabddhc/OutActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    new-instance v2, Lcom/quickapp/bbaaabddhc/OutActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/quickapp/bbaaabddhc/OutActivity$2;-><init>(Lcom/quickapp/bbaaabddhc/OutActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method
