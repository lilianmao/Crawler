.class public final Lcn/jpush/android/a/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcn/jpush/android/a/n;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "@7PZUU A"

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

    const/16 v9, 0x31

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

    const-string v1, "@7PZEU6L`"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "F1PZXP"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "F1P+UV"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0014 H`\u0011Z1WSTF\'Ij_\u0014=S%\u000b\u0014"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "P&Ou\u0011@5BiT\u0014\u001df%tl\u001dsQb\u0014 Cun@5BiT"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "`<E%^X0v`CG=Ok\u0011]\'\u001a%"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "P&Ou\u0011@5BiT\u0014\u001df%tl\u001dsQb\u0014&Eun@5BiT"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "F1PZEU6L`"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "F1PZXPi"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "F1PZUU A"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "F1PZAF1FlI"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "w\u0006eDeqttDsx\u0011\u0000qRD\u000bTdSX1\u0000-CQ$\u007flU\u0014=NqTS1R%AF=MdCMtK`H\u00145Uq^]:CwTY1Nq\u001d@7PZUU A%eq\u000ct,"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "w\u0006eDeqttDsx\u0011\u0000wTD\u000bTdSX1\u0000-CQ$\u007flU\u0014=NqTS1R%AF=MdCMtK`H\u00145Uq^]:CwTY1Nq\u001dF1PZAF1FlI\u0014\u0000e]e\u0018&EunP5Td\u0011`\u0011xQ\u0018"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    return-void

    :pswitch_d
    const/16 v9, 0x34

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x54

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x20

    goto/16 :goto_2

    :pswitch_10
    const/4 v9, 0x5

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
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
    .end packed-switch
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v7, v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move-object v0, v8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v7, v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move-object v0, v8

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/a/n;->c(Landroid/content/Context;)Lcn/jpush/android/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/android/a/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    move v0, v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Lcn/jpush/android/a/n;
    .locals 1

    sget-object v0, Lcn/jpush/android/a/n;->a:Lcn/jpush/android/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jpush/android/a/n;

    invoke-direct {v0, p0}, Lcn/jpush/android/a/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jpush/android/a/n;->a:Lcn/jpush/android/a/n;

    :cond_0
    sget-object v0, Lcn/jpush/android/a/n;->a:Lcn/jpush/android/a/n;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    sget-object v0, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v0, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a/n;->z:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jpush/android/a/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
