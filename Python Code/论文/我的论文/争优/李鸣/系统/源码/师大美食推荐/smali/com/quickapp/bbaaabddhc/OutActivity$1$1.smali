.class Lcom/quickapp/bbaaabddhc/OutActivity$1$1;
.super Ljava/lang/Object;
.source "OutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quickapp/bbaaabddhc/OutActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quickapp/bbaaabddhc/OutActivity$1;


# direct methods
.method constructor <init>(Lcom/quickapp/bbaaabddhc/OutActivity$1;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/quickapp/bbaaabddhc/OutActivity$1$1;->this$1:Lcom/quickapp/bbaaabddhc/OutActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/quickapp/bbaaabddhc/OutActivity$1$1;->this$1:Lcom/quickapp/bbaaabddhc/OutActivity$1;

    iget-object v0, v0, Lcom/quickapp/bbaaabddhc/OutActivity$1;->this$0:Lcom/quickapp/bbaaabddhc/OutActivity;

    # getter for: Lcom/quickapp/bbaaabddhc/OutActivity;->progressBar:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/quickapp/bbaaabddhc/OutActivity;->access$000(Lcom/quickapp/bbaaabddhc/OutActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
