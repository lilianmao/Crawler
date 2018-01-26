.class Lcom/example/qr_codescan/MipcaActivityCapture$1;
.super Ljava/lang/Object;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/qr_codescan/MipcaActivityCapture;->onCreate(Landroid/os/Bundle;)V
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
    .line 48
    iput-object p1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$1;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$1;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    # invokes: Lcom/example/qr_codescan/MipcaActivityCapture;->finishBack()V
    invoke-static {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->access$000(Lcom/example/qr_codescan/MipcaActivityCapture;)V

    .line 52
    iget-object v0, p0, Lcom/example/qr_codescan/MipcaActivityCapture$1;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/example/qr_codescan/MipcaActivityCapture;->finish()V

    .line 53
    return-void
.end method
