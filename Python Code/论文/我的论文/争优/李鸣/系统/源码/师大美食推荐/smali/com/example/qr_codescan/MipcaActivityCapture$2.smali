.class Lcom/example/qr_codescan/MipcaActivityCapture$2;
.super Ljava/lang/Thread;
.source "MipcaActivityCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/qr_codescan/MipcaActivityCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/qr_codescan/MipcaActivityCapture;


# direct methods
.method constructor <init>(Lcom/example/qr_codescan/MipcaActivityCapture;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$100(Lcom/example/qr_codescan/MipcaActivityCapture;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$100(Lcom/example/qr_codescan/MipcaActivityCapture;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->wrapperStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$100(Lcom/example/qr_codescan/MipcaActivityCapture;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/qr_codescan/ItemWrapper;->wrapItems(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imgurl"

    const-string v3, "imgurl"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "price"

    const-string v3, "price"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/example/qr_codescan/MipcaActivityCapture;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finish()V

    .line 122
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imgurl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$2;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # getter for: Lcom/example/qr_codescan/MipcaActivityCapture;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$200(Lcom/example/qr_codescan/MipcaActivityCapture;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "price"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
