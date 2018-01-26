.class public final Lcn/jpush/android/c/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v9, 0x3d

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string v2, "x DD\u0003L\u0014\u0010YJ^\u0011u\u0007ClcNN"

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v8, :cond_2

    move v4, v1

    :cond_0
    move-object v5, v2

    move v6, v4

    move v11, v3

    move-object v3, v2

    move v2, v11

    :goto_1
    aget-char v10, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x2e

    :goto_2
    xor-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_1

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1

    :cond_1
    move v3, v2

    move-object v2, v5

    :goto_3
    if-gt v3, v4, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    sput-object v2, Lcn/jpush/android/c/i;->z:Ljava/lang/String;

    const-string v0, "x DDcL=YbfI4P"

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v7, v8

    goto :goto_2

    :pswitch_1
    const/16 v7, 0x59

    goto :goto_2

    :pswitch_2
    move v7, v9

    goto :goto_2

    :pswitch_3
    move v7, v9

    goto :goto_2

    :pswitch_4
    sput-object v2, Lcn/jpush/android/c/i;->a:Ljava/lang/String;

    return-void

    :cond_2
    move v4, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcn/jpush/android/c/i;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
