.class public Lcn/jpush/android/service/PushReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Lcn/jpush/android/a/d;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x2a

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "m&)_8-i\u0019Xq-aC"

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

    const/16 v9, 0x18

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

    const-string v1, "I\u7682g_v\u0013g\u0018C}k/g"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "IL=Ek+O\u0003D}1`\u000cS}mi\u0003b}0s\u0000U0j"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, ",h?U{&o\u001bU8n&"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "!i\tI"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\"h\tBw*bC^}7(\u000e_v-(.\u007fV\rC.dQ\u0015O9iG\u0000N,~_\u0006"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\riMq[\u0017O\"~G\rI9y^\nE,dQ\u000cH2\u007fH\u0006H(t8\'c\u000bYv&bMYvck\u000c^q%c\u001eD4ci\u001dUvcr\u0005U8\'c\u000bQm/rM]y*hMQ{7o\u001bYl:"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "I\u000c\u6741\u63e0\u7922\u53a9\u572e\u5f6d\u53e1\u624b\u5346\u72b0\u606c\u4e3b\u51e2\u73f3*\u53bc\u5e33\u624b\u5346\u4e0b\u4f77\u51ca\u73a8m"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, " hCZh6u\u0005\u001ey-b\u001f_q\'(\u0004^l&h\u0019\u001eV\u000cR$vQ\u0000G9yW\rY?u[\u0006O;u\\\u001cV?\u007f@\u001a"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, " hCZh6u\u0005\u001ey-b\u001f_q\'(=eK\u000bY$t"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0010c\u0003T8!t\u0002Q| g\u001eD87iMQh3<M"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "I\u7682g_v\u0011c\u001eEu&.D:"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\"h\tBw*bCYv7c\u0003D6\"e\u0019Yw-(=q[\u0008G*uG\u0011C \u007fN\u0006B"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\"h\tBw*bCYv7c\u0003D6\"e\u0019Yw-(=q[\u0008G*uG\u0002B)u\\"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "-c\u0019Gw1m$^~,"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, ".c\u001eCy$c"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, " hCZh6u\u0005\u001ey-b\u001f_q\'(\u0004^l&h\u0019\u001eV\u000cR$vQ\u0000G9yW\rY$~K\u0017G!|G\u0000J$sS\u0006B"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, " hCZh6u\u0005\u001ey-b\u001f_q\'(\u0004^l&h\u0019\u001eV\u000cR$vQ\u0000G9yW\rY\"`]\rC)oH\u0011I5i"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "mv\u0008Bu*u\u001eYw-(\'`M\u0010N2}]\u0010U,w]"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u0000i\u0003^} r\u0004_vcu\u0019Ql&&\u000eXy-a\u0008T87iM\u001d8"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0013s\u001eXJ&e\u0008Yn&t"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "-i._v-c\u000eDq5o\u0019I"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, ",r\u0005Ujch\u0008Do,t\u0006\u0010k7g\u0019U8n&"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "-i\u0019oy6r\u0002Bm-"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "3g\u000e[y$cW"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u65fa\u6cd3\u4e40\u6c91\u6711\u8c40\u752e"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "I\u7682g_v\u0011c\u001eEu&.D:w-V\u000cEk&.D:"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\"e\u0019Yn*r\u0014"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "7\u007f\u001dU"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\"v\u001d\\q g\u0019Yw-)\u001b^|mg\u0003Tj,o\t\u001eh\"e\u0006Q\u007f&+\u000cB{+o\u001bU"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, " hCZh6u\u0005\u001ey-b\u001f_q\'(\u0004^l&h\u0019\u001eV\u000cR$vQ\u0000G9yW\rY\"`]\rC)"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\"h\tBw*bCYv7c\u0003D6\"e\u0019Yw-(8c]\u0011Y=b]\u0010C#d"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "\"v\u001d"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "IL=Ek+O\u0003D}1`\u000cS}mi\u0003b}0s\u0000U0j\u000c\'`m0n$^l&t\u000bQ{&(\u0002^H\"s\u001eU0j"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\"v\u001dy|"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "0c\u0003T}1O\t"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "7i\u000cCl\u0017c\u0015D"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "\"h\tBw*bCYv7c\u0003D6\"e\u0019Yw-(/\u007fW\u0017Y.\u007fU\u0013J(d]\u0007"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\'c\u000fE\u007f\u001ch\u0002Dq%o\u000eQl*i\u0003"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "IL=Ek+O\u0003D}1`\u000cS}mi\u0003`y6u\u0008\u00181"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\"h\tBw*bCYv7c\u0003D6\"e\u0019Yw-(;y]\u0014"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "\tV\u0018Cpc\u5efc\u8bc3\u96f6\u6208cU){8\u65b5\u52a6\u4e67\u7eef\u8bb9\u4ea0\u7807\u4e88\u8bf4\u4f28\u63eb\u9007\u6525\u67ac\u301ac\u000cg\u68f0\u6d53\u5273\u572eg"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushReceiver;->a:Lcn/jpush/android/a/d;

    return-void

    :pswitch_29
    const/16 v9, 0x43

    goto/16 :goto_2

    :pswitch_2a
    const/4 v9, 0x6

    goto/16 :goto_2

    :pswitch_2b
    const/16 v9, 0x6d

    goto/16 :goto_2

    :pswitch_2c
    const/16 v9, 0x30

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
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
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v6, 0x2

    const v12, -0xce6801

    const/16 v11, 0x21

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/jpush/android/c/k;->d(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/service/PushService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/jpush/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcn/jpush/android/service/l;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/16 v0, 0x3ea

    invoke-static {v1, v0, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v0, ""

    array-length v2, v4

    if-lt v2, v6, :cond_1e

    const/4 v0, 0x1

    aget-object v0, v4, v0

    move-object v2, v0

    :goto_1
    const-string v0, ""

    array-length v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    const/4 v0, 0x2

    aget-object v0, v4, v0

    :cond_4
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    sget-object v4, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1, v3, v2}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v2, 0x44c

    invoke-static {v1, v2, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_5
    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_2
    invoke-static {p1, v0}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/l;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v0, Lcn/jpush/android/service/PushService;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/service/PushService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/jpush/android/a/d;->c:Ljava/lang/String;

    const/16 v2, 0x3f7

    invoke-static {v1, v2, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    check-cast v0, Lcn/jpush/android/a/h;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcn/jpush/android/a/h;->ag:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcn/jpush/android/c/a;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v1}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcn/jpush/android/a/a;->e:Z

    if-eqz v1, :cond_c

    iput-boolean v10, v0, Lcn/jpush/android/a/a;->g:Z

    invoke-static {p1, v0}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/a;)V

    :cond_c
    invoke-virtual {p0}, Lcn/jpush/android/service/PushReceiver;->abortBroadcast()V

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_10

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_f

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    const/high16 v1, 0x41500000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_f
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_10
    invoke-static {v3}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v5, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v2, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v1, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    packed-switch v4, :pswitch_data_0

    :goto_3
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v4, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v5, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v5, v4, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v2, v1, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p1, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_12

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_12

    check-cast v0, Landroid/widget/TextView;

    if-eqz v6, :cond_11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    const/high16 v2, 0x41500000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_12
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    aget-object v2, v0, v10

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v1, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v4, 0x27

    aget-object v0, v0, v4

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v2, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v1, v0, v1

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    aget-object v0, v0, v11

    goto/16 :goto_3

    :cond_13
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_14
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    invoke-static {p1, v0, v10}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jpush/android/c/a;->f(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_15
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    sget v0, Lcn/jpush/android/c/ab;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/c/ab;->d:I

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sput-boolean v9, Lcn/jpush/android/service/a;->b:Z

    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_18
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->h(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sput-boolean v10, Lcn/jpush/android/service/a;->b:Z

    invoke-static {}, Lcn/jpush/android/service/DownloadService;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcn/jpush/android/service/DownloadService;->a(Landroid/content/Context;)V

    :cond_19
    sget-boolean v0, Lcn/jpush/android/service/PushService;->n:Z

    if-eqz v0, :cond_1a

    sget v0, Lcn/jpush/android/c/ab;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/c/ab;->e:I

    const/16 v0, 0xbb8

    invoke-static {p1, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;I)V

    :cond_1a
    sget-object v0, Lcn/jpush/android/service/PushReceiver;->a:Lcn/jpush/android/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushReceiver;->a:Lcn/jpush/android/a/d;

    invoke-static {p1, v0}, Lcn/jpush/android/api/j;->b(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    goto/16 :goto_0

    :cond_1b
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sput-boolean v9, Lcn/jpush/android/service/a;->b:Z

    sget v0, Lcn/jpush/android/c/ab;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/c/ab;->d:I

    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushReceiver;->z:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_1d
    move-object v0, v1

    goto/16 :goto_2

    :cond_1e
    move-object v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
