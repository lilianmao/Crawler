.class Lcom/example/qr_codescan/MipcaActivityCapture$3;
.super Ljava/lang/Object;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 198
    iput-object p1, p0, Lcom/example/qr_codescan/MipcaActivityCapture$3;->this$0:Lcom/example/qr_codescan/MipcaActivityCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 201
    return-void
.end method
