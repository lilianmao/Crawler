.class final Lcn/jpush/android/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jpush/android/a/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/api/k;->b:Lcn/jpush/android/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/api/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/api/k;->b:Lcn/jpush/android/a/d;

    invoke-static {v0, v1}, Lcn/jpush/android/api/j;->b(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    return-void
.end method
