.class public final Lcn/jpush/android/service/a;
.super Ljava/lang/Object;


# static fields
.field public static b:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field public a:Z

.field private c:Lcn/jpush/android/service/b;

.field private d:J

.field private e:J

.field private f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x19

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "Kb=V\t%e9_V"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x6c

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, ".|\'S\u0018Kb=V\tKh1T\u000b\u001fln"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Ee$Q"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0005a M\u0003\u0019otY\u0003\u0005j1Y\u0018Kw [\u0018\u001ewtY\u0003\u000fatO\u0002\u000e|$_\u000f\u001fa0\u001aAK"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "G$\'[\u001a\u000eB=V\t;e RV"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "?l1\u001a\u001e\u000ew;O\u001e\u0008at^\u0003\u000ewtT\u0003\u001f$1B\u0005\u0018pt\u0017L"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "G$2S\u0000\u000eP;N\r\u0007H1T\u000b\u001fln"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\ng S\u0003\u0005>0U\u001b\u0005h;[\u0008K)tO\u001e\u0007>"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "G$2S\u0000\u000eJ5W\tQ"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0018p5H\u0018;k\'N\u0005\u0004jn\u001a"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "Kw5L\t\rm8_<\np<\u0000"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0018p;JL\u000fk#T\u0000\u0004e0\u001a\u000e\u0012$!I\t\u0019*"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, ";e&[\u0001Ka&H\u0003\u0019$u\u001bL\u001ev8\u0000"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\t} _\u001fV"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "(h;I\t"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "!T!I\u0004FW\u0010q"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, ">w1HA*c1T\u0018"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "9e:]\t"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "(k:T\t\u0008p=U\u0002"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u000ca \u001a\u0018\u0003at\\\u0005\u0007atN\u0003\u001fe8\u001a\u0000\u000ej3N\u0004Kb&U\u0001Kl N\u001cKm\'\u001a\\E"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "(k:N\t\u0005pyv\t\u0005c R"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "(k:T\t\u0008ptN\u0005\u0006atU\u0019\u001f(tN\u001e\u0012$&_\u001f\u001f$y\u001a"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u0006`a\u001a\u000f\u0003a7QL\u000ev&U\u001eG$ H\u0015Ke3[\u0005\u0005$y\u001a"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "/k#T\u0000\u0004e0\u001a\r\u000ce=T@Kp&CL\u0019a\'NLF$"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, ">P\u0012\u0017T"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/a;->b:Z

    return-void

    :pswitch_18
    const/16 v9, 0x6b

    goto/16 :goto_2

    :pswitch_19
    const/4 v9, 0x4

    goto/16 :goto_2

    :pswitch_1a
    const/16 v9, 0x54

    goto/16 :goto_2

    :pswitch_1b
    const/16 v9, 0x3a

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/a/d;Landroid/os/Bundle;Lcn/jpush/android/service/c;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jpush/android/service/a;->d:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jpush/android/service/a;->e:J

    iput-boolean v0, p0, Lcn/jpush/android/service/a;->a:Z

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    iput-boolean v0, p0, Lcn/jpush/android/service/a;->a:Z

    iput-object p3, p0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    new-instance v1, Lcn/jpush/android/service/b;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p4}, Lcn/jpush/android/service/b;-><init>(Lcn/jpush/android/service/a;Landroid/os/Looper;Lcn/jpush/android/service/c;)V

    iput-object v1, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    iget-object v1, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcn/jpush/android/service/b;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    sget-boolean v1, Lcn/jpush/android/service/a;->b:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    invoke-interface {p4, v4}, Lcn/jpush/android/service/c;->a(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v1, p0, Lcn/jpush/android/service/a;->a:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Lcn/jpush/android/service/c;->a(I)V

    goto :goto_1

    :cond_2
    iget v1, p2, Lcn/jpush/android/a/d;->O:I

    if-nez v1, :cond_3

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    if-eqz p4, :cond_0

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {p4, v6}, Lcn/jpush/android/service/c;->a(I)V

    goto :goto_1

    :cond_3
    if-lt v0, v7, :cond_4

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    if-eqz p4, :cond_0

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {p4, v6}, Lcn/jpush/android/service/c;->a(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p4, p2}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Lcn/jpush/android/service/c;Lcn/jpush/android/a/d;)I

    move-result v1

    iget v2, p2, Lcn/jpush/android/a/d;->O:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p2, Lcn/jpush/android/a/d;->O:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcn/jpush/android/a/d;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcn/jpush/android/a/d;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v1, 0xbb8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    goto/16 :goto_1

    :cond_7
    if-ne v1, v6, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcn/jpush/android/a/d;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x3

    if-ne v1, v0, :cond_9

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {p4, v7}, Lcn/jpush/android/service/c;->a(I)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iput-boolean v4, p0, Lcn/jpush/android/service/a;->a:Z

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {p4, v6}, Lcn/jpush/android/service/c;->a(I)V

    goto/16 :goto_1
.end method

.method private static a(J)I
    .locals 4

    const-wide/32 v0, 0xa00000

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/16 v0, 0xa

    :goto_0
    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcn/jpush/android/service/c;Lcn/jpush/android/a/d;)I
    .locals 19

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->g()Ljava/lang/String;

    move-result-object v13

    const-string v3, ""

    const-string v2, ""

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Lcn/jpush/android/c/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v12, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gtz v11, :cond_14

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    if-gtz v2, :cond_f

    :cond_2
    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    const-wide/16 v2, -0x1

    invoke-static {v12, v2, v3}, Lcn/jpush/android/service/a;->a(Ljava/lang/String;J)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v11, 0xc8

    if-ne v2, v11, :cond_c

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_41
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcn/jpush/android/d; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v3}, Lcn/jpush/android/service/a;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    move-wide v0, v15

    invoke-virtual {v3, v12, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static/range {v15 .. v16}, Lcn/jpush/android/service/a;->a(J)I

    move-result v3

    move-object/from16 v0, p3

    iput v3, v0, Lcn/jpush/android/a/d;->O:I

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_42
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Lcn/jpush/android/d; {:try_start_1 .. :try_end_1} :catch_28
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result-object v11

    if-eqz v11, :cond_a

    :try_start_2
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_43
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_38
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2e
    .catch Lcn/jpush/android/d; {:try_start_2 .. :try_end_2} :catch_29
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_44
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_34
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Lcn/jpush/android/d; {:try_start_3 .. :try_end_3} :catch_2a
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_45
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_35
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_30
    .catch Lcn/jpush/android/d; {:try_start_4 .. :try_end_4} :catch_2b
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/16 v7, 0x400

    :try_start_5
    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v9, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcn/jpush/android/service/a;->a:Z

    if-eqz v10, :cond_5

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    new-instance v4, Lcn/jpush/android/d;

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v5, v5, v7

    invoke-direct {v4, v5}, Lcn/jpush/android/d;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_36
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_31
    .catch Lcn/jpush/android/d; {:try_start_5 .. :try_end_5} :catch_2c
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    :catch_0
    move-exception v4

    move-object v4, v6

    move-object v5, v9

    move-object v6, v11

    :goto_2
    :try_start_6
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    invoke-static {v6, v5, v4, v3, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    :goto_3
    return v2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {p1 .. p1}, Lcn/jpush/android/c/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v2, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcn/jpush/android/c/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/a/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jpush/android/c/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v3, v7, v10, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v0, v8

    move-wide/from16 v17, v0

    add-long v4, v4, v17

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/jpush/android/service/a;->d:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcn/jpush/android/service/a;->e:J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_36
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_31
    .catch Lcn/jpush/android/d; {:try_start_7 .. :try_end_7} :catch_2c
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    :goto_4
    :try_start_8
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    invoke-static {v11, v10, v8, v7, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto :goto_3

    :cond_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-nez v4, :cond_8

    invoke-static {v13, v14}, Lcn/jpush/android/c/g;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcn/jpush/android/service/c;->a(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_36
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_31
    .catch Lcn/jpush/android/d; {:try_start_9 .. :try_end_9} :catch_2c
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :cond_7
    invoke-static {v11, v9, v6, v3, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_8
    :try_start_a
    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_36
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_31
    .catch Lcn/jpush/android/d; {:try_start_a .. :try_end_a} :catch_2c
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-static {v11, v9, v6, v3, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_9
    invoke-static {v11, v9, v6, v3, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_a
    :try_start_b
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_43
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_38
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_33
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2e
    .catch Lcn/jpush/android/d; {:try_start_b .. :try_end_b} :catch_29
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v11, v3, v4, v5, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    :try_start_c
    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_42
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_37
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2d
    .catch Lcn/jpush/android/d; {:try_start_c .. :try_end_c} :catch_28
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_c
    const/16 v3, 0x194

    if-ne v2, v3, :cond_d

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_41
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcn/jpush/android/d; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x3

    goto/16 :goto_3

    :cond_d
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_41
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcn/jpush/android/d; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_e
    :try_start_f
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_41
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lcn/jpush/android/d; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v2, v6

    move-object v11, v9

    :goto_5
    :try_start_10
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {v11, v10, v8, v7, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catch_3
    move-exception v2

    move-object v2, v6

    move-object v11, v9

    :goto_6
    :try_start_11
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {v11, v10, v8, v7, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catch_4
    move-exception v2

    move-object v2, v6

    move-object v11, v9

    :goto_7
    :try_start_12
    invoke-static {}, Lcn/jpush/android/c/r;->g()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    invoke-static {v11, v10, v8, v7, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x1

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v2, v6

    move-object v11, v9

    :goto_8
    :try_start_13
    invoke-static {}, Lcn/jpush/android/c/r;->h()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    invoke-static {v11, v10, v8, v7, v2}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v11, v9

    :goto_9
    invoke-static {v11, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    throw v2

    :cond_f
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    const-wide/16 v2, -0x1

    invoke-static {v12, v2, v3}, Lcn/jpush/android/service/a;->a(Ljava/lang/String;J)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :try_start_14
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/service/a;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_11

    invoke-static {v13, v14}, Lcn/jpush/android/c/g;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eqz p2, :cond_10

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcn/jpush/android/service/c;->a(Ljava/lang/String;Z)V

    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_14
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Lcn/jpush/android/d; {:try_start_14 .. :try_end_14} :catch_8

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x2

    goto/16 :goto_3

    :catch_6
    move-exception v2

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catch_7
    move-exception v2

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    const/4 v2, -0x1

    goto/16 :goto_3

    :catch_8
    move-exception v2

    invoke-static {}, Lcn/jpush/android/c/r;->h()V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_13
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_14
    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v4, v2

    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v17, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v18, 0x9

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    move-object/from16 v0, p3

    iget v11, v0, Lcn/jpush/android/a/d;->O:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_15

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-static {v14, v15}, Lcn/jpush/android/service/a;->a(J)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Lcn/jpush/android/a/d;->O:I

    :cond_15
    invoke-static {v12, v2, v3}, Lcn/jpush/android/service/a;->a(Ljava/lang/String;J)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :try_start_15
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v11, 0xc8

    if-eq v3, v11, :cond_16

    const/16 v11, 0xce

    if-ne v3, v11, :cond_21

    :cond_16
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v2}, Lcn/jpush/android/service/a;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v2, v2, v14

    if-nez v2, :cond_1e

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result-object v11

    if-eqz v11, :cond_1d

    :try_start_16
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_25
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_16 .. :try_end_16} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Lcn/jpush/android/d; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_26
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_17} :catch_22
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Lcn/jpush/android/d; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_27
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18 .. :try_end_18} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_1a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Lcn/jpush/android/d; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    const/16 v7, 0x400

    :try_start_19
    new-array v7, v7, [B

    :goto_b
    invoke-virtual {v9, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_19

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcn/jpush/android/service/a;->a:Z

    if-eqz v10, :cond_18

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    new-instance v4, Lcn/jpush/android/d;

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v5, v5, v7

    invoke-direct {v4, v5}, Lcn/jpush/android/d;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_1b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17
    .catch Lcn/jpush/android/d; {:try_start_19 .. :try_end_19} :catch_13
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :catch_9
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    :goto_c
    :try_start_1a
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_17
    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    const-wide/16 v2, 0x0

    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a

    goto/16 :goto_a

    :catch_a
    move-exception v2

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_18
    const/4 v10, 0x0

    :try_start_1c
    invoke-virtual {v2, v7, v10, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v0, v8

    move-wide/from16 v17, v0

    add-long v4, v4, v17

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/jpush/android/service/a;->d:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcn/jpush/android/service/a;->e:J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Lcn/jpush/android/d; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    goto :goto_b

    :catch_b
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    :goto_d
    :try_start_1d
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_19
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-nez v4, :cond_1b

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcn/jpush/android/c/g;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz p2, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcn/jpush/android/service/c;->a(Ljava/lang/String;Z)V
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Lcn/jpush/android/d; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :cond_1a
    invoke-static {v11, v9, v3, v2, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_1b
    :try_start_1f
    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1f .. :try_end_1f} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Lcn/jpush/android/d; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    invoke-static {v11, v9, v3, v2, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_1c
    invoke-static {v11, v9, v3, v2, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_1d
    :try_start_20
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_25
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_20 .. :try_end_20} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_18
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_14
    .catch Lcn/jpush/android/d; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11, v2, v3, v4, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1e
    :try_start_21
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_21 .. :try_end_21} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_1f
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_20
    :try_start_22
    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_22 .. :try_end_22} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_21
    const/16 v2, 0x1a0

    if-ne v3, v2, :cond_23

    :try_start_23
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jpush/android/service/a;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_23 .. :try_end_23} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :cond_22
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_23
    const/16 v2, 0x194

    if-ne v3, v2, :cond_24

    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_24 .. :try_end_24} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x3

    goto/16 :goto_3

    :cond_24
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_25 .. :try_end_25} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_25 .. :try_end_25} :catch_f
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_25
    :try_start_26
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_24
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_26 .. :try_end_26} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catch Lcn/jpush/android/d; {:try_start_26 .. :try_end_26} :catch_f
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_c
    move-exception v2

    :goto_e
    :try_start_27
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catch_d
    move-exception v2

    :goto_f
    :try_start_28
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catch_e
    move-exception v2

    :goto_10
    :try_start_29
    invoke-static {}, Lcn/jpush/android/c/r;->g()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x1

    goto/16 :goto_3

    :catch_f
    move-exception v2

    :goto_11
    :try_start_2a
    invoke-static {}, Lcn/jpush/android/c/r;->h()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    :goto_12
    invoke-static {v9, v10, v8, v7, v6}, Lcn/jpush/android/service/a;->a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V

    throw v2

    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    const/4 v2, -0x2

    goto/16 :goto_3

    :catchall_2
    move-exception v2

    move-object v9, v11

    goto :goto_12

    :catchall_3
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto :goto_12

    :catchall_4
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto :goto_12

    :catchall_5
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v2, v4

    move-object v9, v11

    goto :goto_12

    :catch_10
    move-exception v2

    move-object v9, v11

    goto :goto_11

    :catch_11
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto :goto_11

    :catch_12
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto :goto_11

    :catch_13
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto :goto_11

    :catch_14
    move-exception v2

    move-object v9, v11

    goto :goto_10

    :catch_15
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto :goto_10

    :catch_16
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto :goto_10

    :catch_17
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_10

    :catch_18
    move-exception v2

    move-object v9, v11

    goto/16 :goto_f

    :catch_19
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_f

    :catch_1a
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_f

    :catch_1b
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_f

    :catch_1c
    move-exception v2

    move-object v9, v11

    goto/16 :goto_e

    :catch_1d
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_e

    :catch_1e
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_e

    :catch_1f
    move-exception v4

    move-object v7, v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_e

    :catch_20
    move-exception v2

    goto/16 :goto_d

    :catch_21
    move-exception v2

    move-object v9, v11

    goto/16 :goto_d

    :catch_22
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_d

    :catch_23
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_d

    :catch_24
    move-exception v2

    goto/16 :goto_c

    :catch_25
    move-exception v2

    move-object v9, v11

    goto/16 :goto_c

    :catch_26
    move-exception v2

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_c

    :catch_27
    move-exception v2

    move-object v8, v3

    move-object v10, v9

    move-object v9, v11

    goto/16 :goto_c

    :catchall_6
    move-exception v3

    move-object v6, v2

    move-object v11, v9

    move-object v2, v3

    goto/16 :goto_9

    :catchall_7
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    goto/16 :goto_9

    :catchall_8
    move-exception v3

    move-object v6, v2

    move-object v10, v9

    move-object v2, v3

    goto/16 :goto_9

    :catchall_9
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    move-object v6, v2

    move-object v2, v3

    goto/16 :goto_9

    :catchall_a
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    move-object v6, v2

    move-object v2, v4

    goto/16 :goto_9

    :catchall_b
    move-exception v7

    move-object v8, v4

    move-object v10, v5

    move-object v11, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v3

    goto/16 :goto_9

    :catch_28
    move-exception v3

    move-object v11, v9

    goto/16 :goto_8

    :catch_29
    move-exception v3

    goto/16 :goto_8

    :catch_2a
    move-exception v3

    move-object v10, v9

    goto/16 :goto_8

    :catch_2b
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_8

    :catch_2c
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_8

    :catch_2d
    move-exception v3

    move-object v11, v9

    goto/16 :goto_7

    :catch_2e
    move-exception v3

    goto/16 :goto_7

    :catch_2f
    move-exception v3

    move-object v10, v9

    goto/16 :goto_7

    :catch_30
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_7

    :catch_31
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_7

    :catch_32
    move-exception v3

    move-object v11, v9

    goto/16 :goto_6

    :catch_33
    move-exception v3

    goto/16 :goto_6

    :catch_34
    move-exception v3

    move-object v10, v9

    goto/16 :goto_6

    :catch_35
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_6

    :catch_36
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_6

    :catch_37
    move-exception v3

    move-object v11, v9

    goto/16 :goto_5

    :catch_38
    move-exception v3

    goto/16 :goto_5

    :catch_39
    move-exception v3

    move-object v10, v9

    goto/16 :goto_5

    :catch_3a
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_5

    :catch_3b
    move-exception v4

    move-object v7, v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_5

    :catch_3c
    move-exception v2

    move-object v2, v6

    move-object v11, v9

    goto/16 :goto_4

    :catch_3d
    move-exception v3

    move-object v11, v9

    goto/16 :goto_4

    :catch_3e
    move-exception v3

    goto/16 :goto_4

    :catch_3f
    move-exception v3

    move-object v10, v9

    goto/16 :goto_4

    :catch_40
    move-exception v3

    move-object v8, v6

    move-object v10, v9

    goto/16 :goto_4

    :catch_41
    move-exception v2

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    move-object v6, v9

    goto/16 :goto_2

    :catch_42
    move-exception v3

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    move-object v6, v9

    goto/16 :goto_2

    :catch_43
    move-exception v3

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    move-object v6, v11

    goto/16 :goto_2

    :catch_44
    move-exception v3

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v11

    goto/16 :goto_2

    :catch_45
    move-exception v3

    move-object v3, v7

    move-object v4, v6

    move-object v5, v9

    move-object v6, v11

    goto/16 :goto_2
.end method

.method static synthetic a(Lcn/jpush/android/service/a;)J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/service/a;->d:J

    return-wide v0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)J
    .locals 4

    sget-object v0, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcn/jpush/android/d;

    sget-object v1, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcn/jpush/android/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-wide v0
.end method

.method private static a(Ljava/lang/String;J)Lorg/apache/http/client/methods/HttpGet;
    .locals 5

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    const/16 v3, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    sget-object v1, Lcn/jpush/android/service/a;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;Ljava/io/BufferedOutputStream;Lorg/apache/http/HttpEntity;)V
    .locals 1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    if-eqz p4, :cond_4

    :try_start_4
    invoke-interface {p4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq v0, p0, :cond_0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/jpush/android/service/a;)J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/service/a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcn/jpush/android/service/a;)Lcn/jpush/android/service/b;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Lcn/jpush/android/service/b;

    return-object v0
.end method
