.class public final Lcn/jpush/android/service/j;
.super Ljava/lang/Thread;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:Z

.field final synthetic b:Lcn/jpush/android/service/PushService;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x12

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "`r\n\"\"\u0017s"

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

    const/16 v9, 0x1f

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

    const-string v1, "{y\u0000 ?E~\u001d<?\u001f7"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0012z9;mF7Tt"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "wy\u001d1m\u0012t\u0006:qWt\u001d=p\\7\u001d<mWv\r\u001d{\u0012*I"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "vY:n?\u001f)I"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "Qe\u000c5kW7\u001a;|Yr\u001dtyS{\u00001{\u0012`\u0000 w\u0012c\u0001&zSs 0?\u000f7"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "wo\u0000 ?@r\n1vD~\u00073?E\u007f\u00008z\u0012{\u0006;o\u001e7\u001d<mWv\r\u001d{\u0012*I"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "~x\u000e=q\u0012q\u0008=sWsSt"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "{y\u0000 \"\u0017sc"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "~x\u000e=q\u0012q\u0008=sWsEtkZe\u000c5{{sIi?"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "bb\u001a<LWe\u001f=|W"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "~x\u000e=q\u0012d\u001c7|Wr\ru?@r\u000e=lFe\u0008 v]y \u0010\""

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u007fS\\"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "~x\u000e=q\u00087\u0004\u001d{\u0012*Iq{\u001e795lA`\u0006&{\u0012z\ra?\u000f7L\'"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "~x\u000e=q\u000f2\r^"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u00039_z/"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u0017\'[\u000c"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "n9"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    return-void

    :pswitch_11
    const/16 v9, 0x32

    goto/16 :goto_2

    :pswitch_12
    const/16 v9, 0x17

    goto/16 :goto_2

    :pswitch_13
    const/16 v9, 0x69

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x54

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
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
    .end packed-switch
.end method

.method public constructor <init>(Lcn/jpush/android/service/PushService;)V
    .locals 1

    iput-object p1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/j;->a:Z

    return-void
.end method

.method private a()I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v1

    move v0, v6

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    sget-object v5, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v5, v5, v7

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    new-array v1, v9, [Ljava/lang/Object;

    sget-wide v4, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v0, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->LogPush(IJLjava/lang/String;J)I

    move-result v0

    :goto_1
    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/16 v7, 0x270f

    const-wide/16 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-static {}, Lcn/jpush/android/service/PushService;->b()Z

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v1, v1, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v1}, Lcn/jpush/android/service/PushProtocol;->Close(I)I

    move-result v1

    iput v1, v0, Lcn/jpush/android/service/PushService;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-static {}, Lcn/jpush/android/service/PushProtocol;->InitConn()I

    move-result v1

    iput v1, v0, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {}, Lcn/jpush/android/service/PushService;->g()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {}, Lcn/jpush/android/service/PushService;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/PushService;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/PushService;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/service/PushService;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {}, Lcn/jpush/android/service/PushService;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/jpush/android/service/PushService;->i()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/PushProtocol;->InitPush(ILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v1, v1, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v1}, Lcn/jpush/android/service/PushProtocol;->Close(I)I

    move-result v1

    iput v1, v0, Lcn/jpush/android/service/PushService;->r:I

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/PushService;->f(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-static {}, Lcn/jpush/android/service/PushService;->j()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->e(Z)Z

    :cond_4
    invoke-static {}, Lcn/jpush/android/service/PushService;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    sget-object v1, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->d()V

    :cond_6
    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcn/jpush/android/service/j;->a()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v7, :cond_f

    :cond_7
    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v3}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/c/a;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;I)I

    invoke-static {}, Lcn/jpush/android/service/PushService;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :try_start_5
    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->f()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    if-ne v0, v7, :cond_9

    :try_start_6
    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    const/16 v1, 0x1770

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;I)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v0, v0, Lcn/jpush/android/service/PushService;->r:I

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, v1, Lcn/jpush/android/service/PushService;->s:[B

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/PushProtocol;->RecvPush(I[BI)I

    move-result v0

    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-lez v0, :cond_e

    invoke-static {}, Lcn/jpush/android/service/PushService;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;)V

    :cond_a
    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1, v0}, Lcn/jpush/android/service/PushService;->e(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    const-wide/16 v1, 0x64

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_8
    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/jpush/android/service/j;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    :cond_c
    :goto_6
    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v1, v1, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget-object v2, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v2, v2, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v2}, Lcn/jpush/android/service/PushProtocol;->Close(I)I

    move-result v2

    iput v2, v1, Lcn/jpush/android/service/PushService;->r:I

    :cond_d
    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1, v0}, Lcn/jpush/android/service/PushService;->f(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto/16 :goto_2

    :cond_e
    const/16 v1, -0x3e2

    if-ne v0, v1, :cond_b

    goto :goto_5

    :cond_f
    :try_start_9
    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iget v3, v3, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v3}, Lcn/jpush/android/service/PushProtocol;->GetEsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_10

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->e()V

    goto :goto_6

    :cond_10
    if-gez v0, :cond_c

    iget-object v1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;J)J

    goto :goto_6

    :cond_11
    sget-object v1, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/j;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method
