.class final Lcn/jpush/android/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Lorg/json/JSONArray;

.field c:Lcn/jpush/android/c/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcn/jpush/android/c/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jpush/android/c/y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/c/y;->b:Lorg/json/JSONArray;

    iput-object p3, p0, Lcn/jpush/android/c/y;->c:Lcn/jpush/android/c/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/c/y;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/c/y;->b:Lorg/json/JSONArray;

    iget-object v2, p0, Lcn/jpush/android/c/y;->c:Lcn/jpush/android/c/x;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/w;->b(Landroid/content/Context;Lorg/json/JSONArray;Lcn/jpush/android/c/x;)V

    return-void
.end method
