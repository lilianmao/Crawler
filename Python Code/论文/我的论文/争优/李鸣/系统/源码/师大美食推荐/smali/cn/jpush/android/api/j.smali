.class public final Lcn/jpush/android/api/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x27

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\u0014KW[K\u0013GBFD\u0015J\\@H\u0019AJDH\u001e"

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

    const/16 v9, 0x5a

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

    const-string v1, "gm<g*qpz#;jg`b3`-ZY\u0017H\\BL\u000eL"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "bj~h`+,"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "*sw\u007f7mpad5j-X]\u000fWKM@\u001fWPSJ\u001f"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "Wf|iztvaezvfqh3rfv-8vlsi9epf-.k#vh,ao}}?v#vh<mmwizvfqh3rf`"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "gm<g*qpz#;jg`b3`-ZY\u0017H\\@H\t"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "lwf}`+,"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "gm<g*qpz#;jg`b3`-\\B\u000eME[N\u001bPJ]C\u0005@FDH\u0016KSW_\u0005EQU="

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "Jlfd<m`sy3kmZh6tf`"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "jlfd<m`sy3km"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "e`fd5j9qa?em\\b.me{n;pj}cz)#|b.me{n;pj}c\u0013`9"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "tb`l7aww\u007fzvfaY#tf2b($e{h6`Ms`?w#w\u007f(kq<"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "*Q"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "nsg~2[m}y3bjql.ml|R3gl|"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "V\'v\u007f;sbpa?"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "V\'~l#kvf"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "ifa~;cfMd7edwR)pbfh\u0005fb`R6ez}x."

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "wwsy?[as\u007f\u0005mnsj?[u{h-"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "V\'{i"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "jlfd<e`fd5j\\|x7"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "esb"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "+jqb4"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "Clf-\u0014QO^-4kw{k3gbfd5j-2J3rf2x*$w}-)lle#"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "gm<g*qpz#;jg`b3`-WU\u000eVB"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "gm<g*qpz#;jg`b3`-\\B\u000eME[N\u001bPJ]C\u0005GL\\Y\u001fJWMY\u0013POW"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "gm<g*qpz#;jg`b3`-SA\u001fVW"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "flvt"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\u0014KW[K\u0013GBFD\u0015J\\]]\u001fJFVR\nVLJTt"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\t]PFH\u0017[EGA\u0016W@@H\u001fJ\\QL\u000eAD]_\u0003"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\t]PFH\u0017[EGA\u0016W@@H\u001fJ\\SN\u000eML\\"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\u0014KW[K\u0013GBFD\u0015J\\]]\u001fJFV"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "gm<g*qpz#;jg`b3`-BX\tL\\[I"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "gm<g*qpz#;jg`b3`-{c.amf#\tLLER\u001cHLSY\u0005RJWZ\u0005E@FD\u0015J"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "e`fd5j9qa?emSa6Jlfd<m`sy3km2 zifa~;cf[i`"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "gm<g*qpz#;jg`b3`-\\B\u000eME[N\u001bPJ]C\u0005MG"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "Wvqn?ag2y5$o}l>$j\u007fl=a#?-"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "`lel4hlsizbo}l.$szb.k#tl3hfv\uff013ibuh\u000fvo(-"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "e`fd5j9qa?em\\b.me{n;pj}cz)#\u007fh)wbuh\u0013`9"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "`lec6kbv-)pbfx)$jqb4$esd6ag\uff1ed7edwX(h92"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    return-void

    :pswitch_26
    const/4 v9, 0x4

    goto/16 :goto_2

    :pswitch_27
    const/4 v9, 0x3

    goto/16 :goto_2

    :pswitch_28
    const/16 v9, 0x12

    goto/16 :goto_2

    :pswitch_29
    const/16 v9, 0xd

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
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
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method private static a(I)I
    .locals 6

    const v1, 0x1080072

    const v0, 0x1080052

    const/16 v5, 0xd

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v0, v0, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    :try_start_0
    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto :goto_1

    :pswitch_2
    const v0, 0x108008f

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const v0, 0x108003f

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcn/jpush/android/a/d;I)I
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/a/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/d;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v0, p1}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    if-gez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_2
    const v1, 0xd3ee80

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/a/d;ZZ)Landroid/app/Notification;
    .locals 10

    const/4 v3, 0x4

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eqz p4, :cond_6

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gez v0, :cond_0

    iget v0, p3, Lcn/jpush/android/a/d;->w:I

    invoke-static {v0}, Lcn/jpush/android/api/j;->a(I)I

    move-result v0

    :cond_0
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iput v0, v5, Landroid/app/Notification;->icon:I

    iget-object v0, p3, Lcn/jpush/android/a/d;->A:Ljava/lang/String;

    iput-object v0, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v0, p3, Lcn/jpush/android/a/d;->y:I

    invoke-static {v0}, Lcn/jpush/android/api/j;->b(I)I

    move-result v0

    iput v0, v5, Landroid/app/Notification;->flags:I

    iget v0, p3, Lcn/jpush/android/a/d;->o:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_1
    iput v0, v5, Landroid/app/Notification;->defaults:I

    iget-boolean v0, p3, Lcn/jpush/android/a/d;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, v5, Landroid/app/Notification;->defaults:I

    invoke-static {p0}, Lcn/jpush/android/c/a;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v8, v5, Landroid/app/Notification;->defaults:I

    :cond_1
    if-eqz p5, :cond_2

    const/high16 v0, 0x8000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p3, Lcn/jpush/android/a/d;->P:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, p3, Lcn/jpush/android/a/d;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v8, 0x11

    aget-object v7, v7, v8

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v1, v1, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v9, 0x10

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v6, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v7, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v0, v5

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    move v0, v2

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto/16 :goto_1

    :pswitch_2
    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    move v0, v3

    goto/16 :goto_1

    :cond_2
    const/high16 v0, 0x8000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_2

    :cond_3
    :try_start_2
    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    move-object v0, v4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->h()V

    move-object v0, v4

    goto :goto_4

    :cond_5
    iget-object v0, p3, Lcn/jpush/android/a/d;->z:Ljava/lang/String;

    iget-object v1, p3, Lcn/jpush/android/a/d;->A:Ljava/lang/String;

    invoke-virtual {v5, p0, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/c/r;->h()V

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    :goto_0
    sget-object v0, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcn/jpush/android/service/PushService;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/api/k;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/k;-><init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/api/j;->b(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/a/d;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/jpush/android/api/j;->a(Lcn/jpush/android/a/d;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/a/d;ZZ)V
    .locals 11

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/jpush/android/api/j;->a(Lcn/jpush/android/a/d;I)I

    move-result v2

    iget-boolean v0, p1, Lcn/jpush/android/a/d;->g:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcn/jpush/android/a/d;->e:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    instance-of v1, p1, Lcn/jpush/android/a/o;

    if-eqz v1, :cond_3

    iget-object v6, p1, Lcn/jpush/android/a/d;->A:Ljava/lang/String;

    iget-object v3, p1, Lcn/jpush/android/a/d;->z:Ljava/lang/String;

    iget-object v5, p1, Lcn/jpush/android/a/d;->k:Ljava/lang/String;

    iget-object v1, p1, Lcn/jpush/android/a/d;->l:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v8, 0x1f

    aget-object v7, v7, v8

    iget-object v8, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v8, 0x19

    aget-object v7, v7, v8

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v8, 0x18

    aget-object v7, v7, v8

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v5}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v3, v3, v7

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v5}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v3, v3, v7

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v6}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/a/d;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p1, Lcn/jpush/android/a/d;->l:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v3, p1, Lcn/jpush/android/a/d;->f:I

    invoke-static {v3}, Lcn/jpush/android/api/JPushInterface;->b(I)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v5

    invoke-interface {v5}, Lcn/jpush/android/api/PushNotificationBuilder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v1}, Lcn/jpush/android/api/PushNotificationBuilder;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {v6}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p1}, Lcn/jpush/android/a/d;->f()Z

    move-result v5

    if-nez v5, :cond_c

    const-class v5, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcn/jpush/android/c/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_2
    invoke-static {v5, v1, v2}, Lcn/jpush/android/api/j;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    sget-object v8, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v9, 0x19

    aget-object v8, v8, v9

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v8, 0x14

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v6, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_3
    iput-object v5, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget v5, p1, Lcn/jpush/android/a/d;->f:I

    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->a(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget v5, p1, Lcn/jpush/android/a/d;->y:I

    invoke-static {v5}, Lcn/jpush/android/api/j;->b(I)I

    move-result v5

    iput v5, v7, Landroid/app/Notification;->flags:I

    iget v5, v7, Landroid/app/Notification;->defaults:I

    if-nez v5, :cond_7

    const/4 v5, 0x3

    iput v5, v7, Landroid/app/Notification;->defaults:I

    :cond_7
    invoke-static {p0}, Lcn/jpush/android/c/a;->p(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    iput v5, v7, Landroid/app/Notification;->defaults:I

    :cond_8
    invoke-virtual {v0, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v5, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_9
    sget-object v5, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    sget-object v6, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    const v7, 0x7fffffff

    invoke-static {p0, v6, v7}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-le v5, v6, :cond_a

    :try_start_0
    sget-object v5, Lcn/jpush/android/api/j;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_4
    iget-object v0, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    const/16 v5, 0x3fa

    invoke-static {v0, v5, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/a/d;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v5, Landroid/content/Intent;

    sget-object v8, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v9, 0x1e

    aget-object v8, v8, v9

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Lcn/jpush/android/a/d;Z)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {p0, v2, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto :goto_4

    :cond_d
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Lcn/jpush/android/a/d;->Q:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    iget-object v1, p1, Lcn/jpush/android/a/d;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v1, v1, v4

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/a/d;ZZ)Landroid/app/Notification;

    move-result-object v1

    move-object v3, v1

    :goto_5
    instance-of v1, p1, Lcn/jpush/android/a/o;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lcn/jpush/android/a/o;

    iget-object v1, v1, Lcn/jpush/android/a/o;->R:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    :cond_f
    if-nez v3, :cond_11

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    goto/16 :goto_1

    :cond_10
    invoke-static {p0, p1, p3}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Lcn/jpush/android/a/d;Z)Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/a/d;ZZ)Landroid/app/Notification;

    move-result-object v1

    move-object v3, v1

    goto :goto_5

    :cond_11
    if-nez p2, :cond_12

    iget-object v1, p1, Lcn/jpush/android/a/d;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcn/jpush/android/api/m;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4, v3, v0}, Lcn/jpush/android/api/m;-><init>(Landroid/os/Looper;Landroid/app/Notification;Landroid/app/NotificationManager;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcn/jpush/android/a/d;->x:Ljava/lang/String;

    new-instance v4, Lcn/jpush/android/api/l;

    invoke-direct {v4, v1, v2, p1}, Lcn/jpush/android/api/l;-><init>(Lcn/jpush/android/api/m;ILcn/jpush/android/a/d;)V

    invoke-static {v3, v0, v4}, Lcn/jpush/android/c/n;->a(Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/c/p;)V

    goto/16 :goto_1

    :cond_12
    iget-object v1, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    const/16 v4, 0x3fa

    invoke-static {v1, v4, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcn/jpush/android/api/j;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/a/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/jpush/android/a/d;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x2

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcn/jpush/android/api/j;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    invoke-static {p3}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p5}, Lcn/jpush/android/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p5, Lcn/jpush/android/a/o;

    if-eqz v0, :cond_5

    move-object v0, p5

    check-cast v0, Lcn/jpush/android/a/o;

    iget-object v2, v0, Lcn/jpush/android/a/o;->aa:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcn/jpush/android/a/o;->aa:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/jpush/android/a/o;->aa:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, v0, Lcn/jpush/android/a/o;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcn/jpush/android/a/o;->X:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcn/jpush/android/a/o;->X:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p5, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/jpush/android/c/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcn/jpush/android/a/o;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcn/jpush/android/c/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v1, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x20

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcn/jpush/android/a/d;->s:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcn/jpush/android/a/d;->t:Z

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcn/jpush/android/a/d;->a(Landroid/content/Context;Lcn/jpush/android/a/d;)Lcn/jpush/android/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/jpush/android/a/d;->t:Z

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcn/jpush/android/a/d;->C:I

    if-ltz v0, :cond_4

    invoke-static {p0, p1}, Lcn/jpush/android/api/j;->d(Landroid/content/Context;Lcn/jpush/android/a/d;)Lcn/jpush/android/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcn/jpush/android/api/j;->c(Landroid/content/Context;Lcn/jpush/android/a/d;)Lcn/jpush/android/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v2, v2}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;Lcn/jpush/android/a/d;ZZ)V

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Lcn/jpush/android/a/d;)Lcn/jpush/android/a/d;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/jpush/android/a/d;->q:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcn/jpush/android/a/d;->r:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget-object v1, p1, Lcn/jpush/android/a/d;->q:Ljava/lang/String;

    const/4 v2, 0x5

    const-wide/16 v3, 0x1388

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Lcn/jpush/android/c/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p1, Lcn/jpush/android/a/d;->q:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcn/jpush/android/a/d;->q:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/jpush/android/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcn/jpush/android/c/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p1, Lcn/jpush/android/a/d;->P:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcn/jpush/android/a/d;->r:Z

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x23

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/a/d;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    move-object p1, v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Lcn/jpush/android/a/d;)Lcn/jpush/android/a/d;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/jpush/android/a/d;->F:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget-object v1, p1, Lcn/jpush/android/a/d;->F:Ljava/lang/String;

    const/4 v2, 0x5

    const-wide/16 v3, 0x1388

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Lcn/jpush/android/c/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p1, Lcn/jpush/android/a/d;->F:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcn/jpush/android/a/d;->F:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/jpush/android/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcn/jpush/android/c/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p1, Lcn/jpush/android/a/d;->G:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v4, 0x23

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/j;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/a/d;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    move-object p1, v0

    goto :goto_0
.end method
