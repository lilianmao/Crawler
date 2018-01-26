.class public final Lcn/jpush/android/ui/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/jpush/android/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jpush/android/ui/l;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcn/jpush/android/ui/l;->b:Lcn/jpush/android/a/d;

    return-void
.end method
