.class Lcom/exception/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exception/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exception/CrashHandler;


# direct methods
.method constructor <init>(Lcom/exception/CrashHandler;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/exception/CrashHandler$1;->this$0:Lcom/exception/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 89
    iget-object v0, p0, Lcom/exception/CrashHandler$1;->this$0:Lcom/exception/CrashHandler;

    # getter for: Lcom/exception/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/exception/CrashHandler;->access$000(Lcom/exception/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 91
    return-void
.end method
