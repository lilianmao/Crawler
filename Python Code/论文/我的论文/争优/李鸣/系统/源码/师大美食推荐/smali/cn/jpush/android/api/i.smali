.class final Lcn/jpush/android/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/h;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/api/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/h;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lcn/jpush/android/api/h;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcn/jpush/android/api/d;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/api/h;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jpush/android/api/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v3}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    sput-boolean v3, Lcn/jpush/android/api/d;->a:Z

    :cond_2
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/h;->a(Ljava/lang/String;)Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcn/jpush/android/api/h;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/api/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcn/jpush/android/api/h;->a(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jpush/android/api/d;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/api/h;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/jpush/android/api/h;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jpush/android/api/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v5}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    sput-boolean v3, Lcn/jpush/android/api/d;->b:Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jpush/android/api/h;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/jpush/android/api/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/api/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
