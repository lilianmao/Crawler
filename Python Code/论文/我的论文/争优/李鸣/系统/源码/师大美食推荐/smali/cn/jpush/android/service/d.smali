.class final Lcn/jpush/android/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jpush/android/service/c;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcn/jpush/android/service/DownloadService;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "A\u00041\u0003M\u000cH\u007f"

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

    const/16 v11, 0x39

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

    const-string v0, "\u001dA&\tW\u0019\u001e"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "A\u0004!\u0003N\u0003H*\r]\u0008@\u007f"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/service/d;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x6d

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x24

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x45

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x6c

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

.method constructor <init>(Lcn/jpush/android/service/DownloadService;ZI)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    iput-boolean p2, p0, Lcn/jpush/android/service/d;->a:Z

    iput p3, p0, Lcn/jpush/android/service/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->c(Lcn/jpush/android/service/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/service/d;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {p1}, Lcn/jpush/android/service/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-boolean v4, v0, Lcn/jpush/android/a/d;->K:Z

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iget-object v0, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    const/16 v1, 0x3f3

    iget-object v2, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/h;

    iget-object v0, v0, Lcn/jpush/android/a/h;->ab:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v1

    iget-object v1, v1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    const/16 v2, 0x3fe

    iget-object v3, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v3, v0}, Lcn/jpush/android/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1, v2, v0, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-boolean v4, v0, Lcn/jpush/android/a/d;->L:Z

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    iget v1, p0, Lcn/jpush/android/service/d;->b:I

    iget-object v2, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v2}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;ILcn/jpush/android/a/d;I)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 7

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/d;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/d;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/d;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-boolean v0, p0, Lcn/jpush/android/service/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    iget-object v1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v1

    iget v2, p0, Lcn/jpush/android/service/d;->b:I

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;Lcn/jpush/android/a/d;IJJ)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-boolean v5, v0, Lcn/jpush/android/a/d;->M:Z

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0x3e9

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/h;

    iput-object p1, v0, Lcn/jpush/android/a/h;->ag:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/jpush/android/a/h;->ah:Z

    iget-boolean v2, v0, Lcn/jpush/android/a/h;->X:Z

    iget v3, v0, Lcn/jpush/android/a/h;->Y:I

    iget-object v4, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v2, v3, v4}, Lcn/jpush/android/a/l;->a(ZILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x3eb

    iput-boolean v5, v0, Lcn/jpush/android/a/h;->ah:Z

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    if-eqz p2, :cond_1

    const/16 v0, 0x3f5

    :cond_1
    iget-object v1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v1

    iget-object v1, v1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1, v0, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->b(Lcn/jpush/android/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/service/d;->b:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-boolean v5, v0, Lcn/jpush/android/a/d;->L:Z

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    iget-object v1, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;Lcn/jpush/android/a/d;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/r;

    iput-object p1, v0, Lcn/jpush/android/a/r;->Z:Ljava/lang/String;

    const/16 v0, 0x3ec

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Lcn/jpush/android/service/DownloadService;

    invoke-static {v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-object p1, v0, Lcn/jpush/android/a/d;->T:Ljava/lang/String;

    goto :goto_0
.end method
