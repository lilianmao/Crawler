.class public Lcn/jpush/android/service/PushProtocol;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "K!.\u000eV"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x3e

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :pswitch_0
    const/16 v5, 0x21

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x51

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x5b

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x7d

    goto :goto_1

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synchronized native declared-synchronized Close(I)I
.end method

.method public static native EnChannel(IJLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native GetEsg(I)Ljava/lang/String;
.end method

.method public static native GetSdkVersion()I
.end method

.method public static native HbJPush(IJ)I
.end method

.method public static native InitConn()I
.end method

.method public static native InitPush(ILjava/lang/String;I)I
.end method

.method public static native LogPush(IJLjava/lang/String;J)I
.end method

.method public static native MsgResponse(IIJBJ)I
.end method

.method public static native PushTime(IJLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native RecvPush(I[BI)I
.end method

.method public static native RegPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native RepPush(IJBLjava/lang/String;)I
.end method

.method public static native Stop(I)I
.end method

.method public static native TagAlias(IJLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native UnChnelId(IJLjava/lang/String;Ljava/lang/String;)I
.end method
