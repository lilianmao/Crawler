.class final Lcn/jpush/android/a/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/a/f;


# direct methods
.method constructor <init>(Lcn/jpush/android/a/f;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->a(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->b(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->a(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v1}, Lcn/jpush/android/a/f;->b(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->c(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->d(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v0}, Lcn/jpush/android/a/f;->c(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/a/g;->a:Lcn/jpush/android/a/f;

    invoke-static {v1}, Lcn/jpush/android/a/f;->d(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
