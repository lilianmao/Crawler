.class Lcom/example/jpushdemo/TestActivity$2;
.super Landroid/os/Handler;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jpushdemo/TestActivity;
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
    .line 137
    iput-object p1, p0, Lcom/example/jpushdemo/TestActivity$2;->this$0:Lcom/example/jpushdemo/TestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$2;->this$0:Lcom/example/jpushdemo/TestActivity;

    # invokes: Lcom/example/jpushdemo/TestActivity;->catchError()V
    invoke-static {v0}, Lcom/example/jpushdemo/TestActivity;->access$100(Lcom/example/jpushdemo/TestActivity;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$2;->this$0:Lcom/example/jpushdemo/TestActivity;

    const-string v1, "splashscreen"

    const v2, 0x7f020006

    invoke-virtual {v0, v1, v2}, Lcom/example/jpushdemo/TestActivity;->setIntegerProperty(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$2;->this$0:Lcom/example/jpushdemo/TestActivity;

    const-string v1, "loadUrlTimeoutValue"

    const v2, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/example/jpushdemo/TestActivity;->setIntegerProperty(Ljava/lang/String;I)V

    .line 146
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/example/jpushdemo/TestActivity$2;->this$0:Lcom/example/jpushdemo/TestActivity;

    const-string v1, "file:///mnt/sdcard/bbaaabddhc/push.html?from=app;"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/example/jpushdemo/TestActivity;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method
