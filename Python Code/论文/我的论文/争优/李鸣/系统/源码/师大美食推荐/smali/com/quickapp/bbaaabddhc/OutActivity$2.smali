.class Lcom/quickapp/bbaaabddhc/OutActivity$2;
.super Ljava/lang/Object;
.source "OutActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

.field final synthetic val$wView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/quickapp/bbaaabddhc/OutActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/quickapp/bbaaabddhc/OutActivity$2;->this$0:Lcom/quickapp/bbaaabddhc/OutActivity;

    iput-object p2, p0, Lcom/quickapp/bbaaabddhc/OutActivity$2;->val$wView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/OutActivity$2;->val$wView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/OutActivity$2;->val$wView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 56
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
