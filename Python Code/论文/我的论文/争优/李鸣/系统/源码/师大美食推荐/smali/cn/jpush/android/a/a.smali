.class public final Lcn/jpush/android/a/a;
.super Lcn/jpush/android/a/d;


# instance fields
.field public a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/a/d;-><init>()V

    return-void
.end method

.method public static a(Lcn/jpush/android/a/a;)Lcn/jpush/android/a/d;
    .locals 2

    new-instance v0, Lcn/jpush/android/a/b;

    invoke-direct {v0}, Lcn/jpush/android/a/b;-><init>()V

    iget-object v1, p0, Lcn/jpush/android/a/a;->m:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->m:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->l:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->l:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->h:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->i:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->i:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->j:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->k:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->k:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->S:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->S:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/a;->U:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/a/d;->U:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/a/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/a/d;->a(Z)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
