.class Lcom/example/jpushdemo/TestActivity$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jpushdemo/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/jpushdemo/TestActivity;


# direct methods
.method constructor <init>(Lcom/example/jpushdemo/TestActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    iget-object v2, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    iget-object v2, v2, Lcom/example/jpushdemo/TestActivity;->s:Ljava/lang/String;

    # invokes: Lcom/example/jpushdemo/TestActivity;->geturl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/example/jpushdemo/TestActivity;->access$000(Lcom/example/jpushdemo/TestActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    # invokes: Lcom/example/jpushdemo/TestActivity;->downloadUrl(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/example/jpushdemo/TestActivity;->access$200(Lcom/example/jpushdemo/TestActivity;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    # getter for: Lcom/example/jpushdemo/TestActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/example/jpushdemo/TestActivity;->access$300(Lcom/example/jpushdemo/TestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    :goto_2
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    # invokes: Lcom/example/jpushdemo/TestActivity;->catchError()V
    invoke-static {v0}, Lcom/example/jpushdemo/TestActivity;->access$100(Lcom/example/jpushdemo/TestActivity;)V

    move-object v0, v1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    # invokes: Lcom/example/jpushdemo/TestActivity;->catchError()V
    invoke-static {v0}, Lcom/example/jpushdemo/TestActivity;->access$100(Lcom/example/jpushdemo/TestActivity;)V

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$1;->this$0:Lcom/example/jpushdemo/TestActivity;

    # getter for: Lcom/example/jpushdemo/TestActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/example/jpushdemo/TestActivity;->access$300(Lcom/example/jpushdemo/TestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
