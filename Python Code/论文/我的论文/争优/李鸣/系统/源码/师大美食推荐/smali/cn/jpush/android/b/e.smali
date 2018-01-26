.class final Lcn/jpush/android/b/e;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jpush/android/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "q*,\u000c\u0016y f\u0010\u001cdj?\u0017\u001fyj\u001b=8^\u001b\u001a;*E\u0008\u001c-"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x79

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "q*,\u000c\u0016y f\u0010\u001cdj?\u0017\u001fyj\u001f7?Y\u001b\u001b*8D\u0001\u0017=1Q\n\u000f;="

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "g-.\u0017&c0)\n\u001c"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x10

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x44

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x48

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x7e

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructor <init>(Lcn/jpush/android/b/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/android/b/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/android/b/e;-><init>(Lcn/jpush/android/b/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->i(Lcn/jpush/android/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    sget-object v0, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->e(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/b/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    sget-object v4, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v4}, Lcn/jpush/android/b/d;->e(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jpush/android/b/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    iget-object v1, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v1}, Lcn/jpush/android/b/d;->e(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/b/i;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v1}, Lcn/jpush/android/b/d;->j(Lcn/jpush/android/b/d;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->i(Lcn/jpush/android/b/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-virtual {v0}, Lcn/jpush/android/b/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    iget-object v4, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v4}, Lcn/jpush/android/b/d;->e(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jpush/android/b/i;->c()Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v4}, Lcn/jpush/android/b/d;->j(Lcn/jpush/android/b/d;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->i(Lcn/jpush/android/b/d;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-virtual {v0}, Lcn/jpush/android/b/d;->d()V

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->d(Lcn/jpush/android/b/d;)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->c(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/jpush/android/b/f;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v2}, Lcn/jpush/android/b/d;->k(Lcn/jpush/android/b/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->c(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/f;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v5, v1, v2}, Lcn/jpush/android/b/f;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->c(Lcn/jpush/android/b/d;)Lcn/jpush/android/b/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/jpush/android/b/f;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0}, Lcn/jpush/android/b/d;->l(Lcn/jpush/android/b/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jpush/android/b/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    iput-boolean v6, v0, Lcn/jpush/android/b/d;->d:Z

    iget-object v0, p0, Lcn/jpush/android/b/e;->a:Lcn/jpush/android/b/d;

    invoke-static {v0, v1}, Lcn/jpush/android/b/d;->a(Lcn/jpush/android/b/d;Z)Z

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_1
.end method
