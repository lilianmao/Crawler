.class public final Lcn/jpush/android/a/q;
.super Lcn/jpush/android/a/h;


# static fields
.field private static final bb:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "%&;j8\u0007&pw?\u001f?pi8\u0014-p)w"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x57

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "\u00118;[$\u0018\'\'"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jpush/android/a/q;->bb:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x70

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x48

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x50

    goto :goto_2

    :pswitch_4
    const/4 v11, 0x4

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jpush/android/a/h;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/jpush/android/a/q;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/q;->ac:Lcn/jpush/android/a/k;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    iget-boolean v0, p0, Lcn/jpush/android/a/q;->X:Z

    iget v1, p0, Lcn/jpush/android/a/q;->Y:I

    invoke-static {v0, v1, p1}, Lcn/jpush/android/a/l;->a(ZILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/jpush/android/a/q;->aa:I

    if-ne v0, v2, :cond_1

    invoke-static {p1, p0, v2}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Lcn/jpush/android/a/d;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/jpush/android/a/q;->aa:I

    if-nez v0, :cond_2

    invoke-static {p1, p0, v2, v2}, Lcn/jpush/android/api/j;->a(Landroid/content/Context;Lcn/jpush/android/a/d;ZZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/a/q;->bb:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/android/a/q;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 3

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    invoke-super {p0, p1, p2}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    sget-object v1, Lcn/jpush/android/a/q;->bb:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/jpush/android/a/q;->aa:I

    return v0
.end method
