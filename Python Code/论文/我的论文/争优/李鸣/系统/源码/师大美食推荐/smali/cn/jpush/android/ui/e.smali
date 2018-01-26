.class final Lcn/jpush/android/ui/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/d;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/e;->a:Lcn/jpush/android/ui/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcn/jpush/android/ui/e;->a:Lcn/jpush/android/ui/d;

    invoke-static {v0}, Lcn/jpush/android/ui/d;->a(Lcn/jpush/android/ui/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/e;->a:Lcn/jpush/android/ui/d;

    invoke-static {v0}, Lcn/jpush/android/ui/d;->a(Lcn/jpush/android/ui/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/e;->a:Lcn/jpush/android/ui/d;

    invoke-static {v0}, Lcn/jpush/android/ui/d;->a(Lcn/jpush/android/ui/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
