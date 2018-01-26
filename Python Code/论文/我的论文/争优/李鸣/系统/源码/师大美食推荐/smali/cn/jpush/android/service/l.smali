.class public final Lcn/jpush/android/service/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:J

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0007\u0013u\'Y\u0002\u0007Z\nU\u0010"

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

    const/16 v9, 0x38

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

    const-string v1, "\u0007\u0000q\u0011W\u0008"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0007\u0013u\u0011\\"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0012\u001au\u001d"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0014\u000es"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0007\u0007a"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "3\rn\u0016W\u0011\r%\n]\u0016\u000cw\u000c\u0018\u0005\u000ca\u001d\u0018KC"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "3\rn\u0016W\u0011\r%\u001dJ\u0014\u000cwX[\t\u0007`X\u0015F"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ")("

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v4, v6, :cond_5

    :cond_3
    move-object v6, v1

    move v7, v5

    move v11, v4

    move-object v4, v1

    move v1, v11

    :goto_4
    aget-char v9, v4, v5

    rem-int/lit8 v8, v7, 0x5

    packed-switch v8, :pswitch_data_2

    const/16 v8, 0x38

    :goto_5
    xor-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v5

    add-int/lit8 v5, v7, 0x1

    if-nez v1, :cond_4

    move-object v4, v6

    move v7, v5

    move v5, v1

    goto :goto_4

    :pswitch_7
    const/16 v9, 0x66

    goto/16 :goto_2

    :pswitch_8
    const/16 v9, 0x63

    goto/16 :goto_2

    :pswitch_9
    const/4 v9, 0x5

    goto/16 :goto_2

    :pswitch_a
    const/16 v9, 0x78

    goto/16 :goto_2

    :pswitch_b
    const/16 v8, 0x66

    goto :goto_5

    :pswitch_c
    const/16 v8, 0x63

    goto :goto_5

    :pswitch_d
    const/4 v8, 0x5

    goto :goto_5

    :pswitch_e
    const/16 v8, 0x78

    goto :goto_5

    :cond_4
    move v4, v1

    move-object v1, v6

    :cond_5
    if-gt v4, v5, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "#\u001bf\u001d]\u0002Cg\r^\u0000\u0006wXK\u000f\u0019`V\u00186\u000f`\u0019K\u0003Cf\u0017V\u0012\u0002f\u000c\u0018\u0015\u0016u\u0008W\u0014\u0017+"

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "%\u000ck\u0016]\u0005\u0017l\u0017VF\u0005d\u0011T\u0003\u0007+Xh\n\u0006d\u000b]F\u0000m\u001d[\rC|\u0017M\u0014Cf\u0017V\u0008\u0006f\u000cQ\t\r%\u0019V\u0002Cw\u001dL\u0014\u001a%\u0014Y\u0012\u0006wY"

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_10
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "5\u0006k\u001cQ\u0008\u0004%\u001eY\u000f\u000f`\u001c\u0018\t\u0011%\u000cQ\u000b\u0006j\rLHCU\u0014]\u0007\u0010`Xj\u0003\u0017w\u0001\u0018\n\u0002q\u001dJG"

    const/4 v0, 0x2

    goto :goto_3

    :pswitch_11
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "4\u0006f\u001dQ\u0010\nk\u001f\u0018\u0000\u0002l\u0014]\u0002Cj\n\u0018\u0012\nh\u001dW\u0013\u0017+Xh\n\u0006d\u000b]F1`\u000cJ\u001fCi\u0019L\u0003\u0011$"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "%\u000ck\u0016]\u0005\u0017l\u0017VF\nvX[\n\u000cv\u001d\\HCU\u0014]\u0007\u0010`Xj\u0003\u0017w\u0001\u0018\n\u0002q\u001dJG"

    const/4 v0, 0x4

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "4\u0006v\u0008W\u0008\u0010`XL\u000f\u000e`\u0017M\u0012M%(T\u0003\u0002v\u001d\u00184\u0006q\nAF\u000fd\u000c]\u0014B"

    const/4 v0, 0x5

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "/\rs\u0019T\u000f\u0007%\u000bW\u0005\u0008`\u000c\u0016F3i\u001dY\u0015\u0006%*]\u0012\u0011|XT\u0007\u0017`\n\u0019"

    const/4 v0, 0x6

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, " \u0002l\u0014]\u0002Cq\u0017\u0018\u0014\u0006b\u0011K\u0012\u0006wY"

    const/4 v0, 0x7

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "?\u000cp\n\u0018\u0007\u0013u3]\u001fCd\u0016\\F\u0002k\u001cJ\t\naXH\u0007\u0000n\u0019_\u0003Ck\u0019U\u0003Cd\n]F\rj\u000c\u0018\u000b\u0002q\u001bP\u0003\u0007+Xh\n\u0006d\u000b]F\u0007j\rZ\n\u0006%\u001bP\u0003\u0000nXL\u000e\u0006hXY\u0005\u0000j\n\\\u000f\rbXL\tCD\u0008H\n\nf\u0019L\u000f\u000ckXA\t\u0016%\u001bJ\u0003\u0002q\u001d\\F\u000ckXh\t\u0011q\u0019TH"

    const/16 v0, 0x8

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "?\u000cpXY\u0008\u0007w\u0017Q\u0002Cu\u0019[\r\u0002b\u001d\u0018\u0008\u0002h\u001d\u0018\u000f\u0010%\u0016W\u0012C`\u0000Q\u0015\u0017)Xh\n\u0006d\u000b]F\u0011`\u001fQ\u0015\u0017`\n\u0018\u001f\u000cp\n\u0018\u0016\u0002f\u0019S\u0001\u0006%\u0016Y\u000b\u0006%\u0011VF3j\nL\u0007\u000f+"

    const/16 v0, 0x9

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "/\rs\u0019T\u000f\u0007%1U\u0003\n)Xj\u0003\u0004l\u000bL\u0003\u0011%\u0019_\u0007\nkV"

    const/16 v0, 0xa

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%2k)-%\u0008Y\u0014\u0010l\u0016_F\u0010p\u001b[\u0003\u0006a"

    const/16 v0, 0xb

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%2k)-%\u0008Y\u0014\u0010l\u0016_F\u0005d\u0011T\u0003\u0007"

    const/16 v0, 0xc

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%\u0019T\u0014\u0006d\u001cAF\u0011`\u001b]\u000f\u0015`\u001c\u0014F\u0004l\u000e]F\u0016u"

    const/16 v0, 0xd

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%\u0019T\u0014\u0006d\u001cAF\u0011`\u001b]\u000f\u0015`\u001c\u0014F\u0010q\u0011T\nCu\nW\u0005\u0006v\u000b"

    const/16 v0, 0xe

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u0019V\u0002Cj\u0008]\u0008\u0006aXL\u000e\u0006%5]\u0015\u0010d\u001f]"

    const/16 v0, 0xf

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%\u001cW\u0011\ri\u0017Y\u0002Cv\r[\u0005\u0006`\u001c"

    const/16 v0, 0x10

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%\n]\u0005\u0006l\u000e]\u0002Cv\r[\u0005\u0006`\u001c"

    const/16 v0, 0x11

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "+\u0006v\u000bY\u0001\u0006%\u000bQ\n\u0006k\u001b]F\u0007j\u000fV\n\u000cd\u001c\u0018\u0015\u0016f\u001b]\u0003\u0007"

    const/16 v0, 0x12

    goto/16 :goto_3

    :pswitch_21
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "0\na\u001dWF\u0010l\u0014]\u0008\u0000`X\\\t\u0014k\u0014Y\t\u0007%\u000bM\u0005\u0000`\u001d\\"

    const/16 v0, 0x13

    goto/16 :goto_3

    :pswitch_22
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u000eQ\u0002\u0006jXY\u0008\u0007%\u0012M\u000b\u0013`\u001c\u0018\u0012\u000c%\rJ\nCH\u001dK\u0015\u0002b\u001d\u0018N\u0001w\u0017O\u0015\u0006wQ"

    const/16 v0, 0x14

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "0\na\u001dWF\nvX^\t\u0011f\u001d\u0018\u0005\u000fj\u000b]\u0002Cg\u0001\u0018\u0013\u0010`\n"

    const/16 v0, 0x15

    goto/16 :goto_3

    :pswitch_24
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%_w-D"

    const/16 v0, 0x16

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%_{\u0007\rf\u001dTA"

    const/16 v0, 0x17

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "\"\u000cr\u0016T\t\u0002aX^\u0007\ni\u001d\\"

    const/16 v0, 0x18

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u000cWF\u0007j\u000fV\n\u000cd\u001c\u0018\u0007\u0004d\u0011V"

    const/16 v0, 0x19

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "2\u000b`X^\u000f\u000f`XY\n\u0011`\u0019\\\u001fC`\u0000Q\u0015\u0017%\u0019V\u0002Cv\u0019U\u0003Cv\u0011B\u0003M%<W\u0008DqX\\\t\u0014k\u0014W\u0007\u0007%\u0019_\u0007\nkV"

    const/16 v0, 0x1a

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x44c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "/\rs\u0019T\u000f\u0007%\u0008Y\u0014\u0002hXW\u0014Cp\u0016]\u001e\u0013`\u001bL\u0003\u0007%\n]\u0015\u0016i\u000c\u0016"

    const/16 v0, 0x1b

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, " \u0002l\u0014]\u0002Cq\u0017\u0018\u0016\u0011`\u0014W\u0007\u0007%\n]\u0017\u0016l\n]\u0002Cw\u001dK\t\u0016w\u001b]"

    const/16 v0, 0x1c

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u0011V\u0015\u0017d\u0014TF\u0002i\u001dJ\u0012Cj\u0016\u0018\u0015\u0017d\u000cM\u0015Cg\u0019JF\u0002c\u000c]\u0014Ca\u0017O\u0008\u000fj\u0019\\\u000f\rbX^\u000f\rl\u000bP\u0003\u0007+"

    const/16 v0, 0x1d

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u000cP\u0003Cr\u001dZ\u0010\n`\u000f\u001f\u0015Cp\nT"

    const/16 v0, 0x1e

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "3\u0010`\n\u0018\u0005\u000fl\u001bS\u0003\u0007%\u001bY\n\u000f%\u0019[\u0012\nj\u0016"

    const/16 v0, 0x1f

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "2\u000b`Xu\u0003\u0010v\u0019_\u0003Cv\u0010W\u0011Cl\u0016\u0018\u0012\u000b`XK\u0012\u0002q\rKF\u0001d\n"

    const/16 v0, 0x20

    goto/16 :goto_3

    :pswitch_2f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "%\u000fl\u001bSF\u0002u\u0008T\u000f\u0010qXY\u0008\u0007%\u000bP\t\u0014%\u000cP\u0003CH\u001dK\u0015\u0002b\u001d"

    const/16 v0, 0x21

    goto/16 :goto_3

    :pswitch_30
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "\"\u000cr\u0016\u0018\u000f\u000ed\u001f]F\u0005d\u0011T\u0003\u0007"

    const/16 v0, 0x22

    goto/16 :goto_3

    :pswitch_31
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "\"\u000cr\u0016\u0018\u000e\u0017h\u0014\u0018\u0000\u0002l\u0014]\u0002"

    const/16 v0, 0x23

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "\"\u000cr\u0016\u0018+\u0006v\u000bY\u0001\u0006%\u001eY\u000f\u000f`\u001c"

    const/16 v0, 0x24

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x406

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "\"\nv\u001bY\u0014\u0007%\u000cP\u0003Ch\u001dK\u0015\u0002b\u001d\u0018\u0004\u0006f\u0019M\u0015\u0006%\u0011LF\nvXV\t\u0017%\u0011VF\u0017m\u001d\u0018\u0016\u0016v\u0010\u0018\u0012\nh\u001d"

    const/16 v0, 0x25

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x407

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "5\u0017j\u0008\u0018\u0016\u0016v\u0010\u0018\u0015\u0006w\u000eQ\u0005\u0006"

    const/16 v0, 0x26

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    const/16 v0, 0x408

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "4\u0006v\rU\u0003Cu\rK\u000eCv\u001dJ\u0010\nf\u001d"

    const/16 v0, 0x27

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/l;->c:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
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
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/l;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/l;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/l;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
