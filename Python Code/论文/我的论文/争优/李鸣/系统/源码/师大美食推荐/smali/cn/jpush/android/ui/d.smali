.class public final Lcn/jpush/android/ui/d;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Lcn/jpush/android/ui/e;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/e;-><init>(Lcn/jpush/android/ui/d;)V

    iput-object v0, p0, Lcn/jpush/android/ui/d;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/d;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/d;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/d;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
