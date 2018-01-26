.class public final Lcn/jpush/android/c/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ",d\u4e49y\u9ffeB\u0012p5v\u0008~d\u000e\u0004/\u0014m"

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

    const/16 v9, 0x5b

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

    const-string v1, ",d\u4e49y\u9ffeB\u0012p5v\u0008~d\u000e\u0004/DyxoBBm"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Z\u0017a|\u0000\u0013\u00123\u0015v(\u000fdm\u00fb_\ud7c0\uf949y\ufd94\ufd82\u0012\uffa6\t\u0000\u0013\u00123\u0015v(\u000fdm\u00fb_\ud7c0\uf949y\ufd94\ufd82\u0012\uffa6\u0008v/\u0015`~\u0000\u0013\u00123\u0015v(\u000fdm\u00fb_\ud7c0\uf949y\ufd94\ufd82\u0012\uffa6\t\u0007\\\u0016b"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/c/t;->z:[Ljava/lang/String;

    const-string v1, "Z\u0017(1)\u001dC(&+\u0013C(\'2\u0013C(\u000f8\u0016Z/32\u001eR\';*\u0000L=!,\nE\u0014}\'Z] .\'\u0010d(6?\u0017Y.<2\u0018R\';)\u0001K?#\"\u0008b`(s\u0011^=(8\u001dR574\u001dO57\u0000\u0013\\-2<\u001aV\"86\u001cP;!-\nF3\tr\u000e[\u001211\u0019R&.\u0006\u000e\u0017,0.\u000eZ\u00127>\u0015M: ./\u001652\u0000\u001bU\"94\u0000b5|<\u001dI53\u0000\u0013]-1=\u0015W 86\u001cO8&(\u0006J>-\u0006[C!\u000f0\u001fQ; ./Ca=5\u0014P5=5\u0006C \u000f?\u0017S$:4\u0003M: \u0006[Ca>4\u0010L5>\u0000\u0017R&$\u0006[C\"\u000f>\u0015W 95\u0002M>-!/C%\u000f:\u0010\\ ?)\u0001K<\"\"/Ca92\u001eC$;9\u001bC$!(\u0017J$(6)^*0>\u0015W\"86\u001cP9%)\u0001K<\",\nF3\tr\u000e\u0017\'56\u0017C\'1/\u000eQ\u001258\u0017Y.=7\u001dO;!!/\u00165|4\u0000X5;6[Ca$)\u001dC9\u000f:\u0017Y.<0\u001eR\'&(\u0006H0\tr\u000eN(())Z&\'.\u0005b5\'\u0000\u0013]*0>\u0015W >0\u001eR\';)\u0006J?-!/Ca >\u001eC=&:\u0004Z%(/)\\-2<\u001aU\"86\u001cP9&/\u0004H3\tr\u000eJ\u00125<\u0019L0.\u0006\u000eI\u001258\u0017X :./C>\u000f=\u0001b5|#\u001ccd\u0008vBE>9nD[5,5.\u0012\u0015yjC]|6(A^p51DX5,5.\u0012\u0015ycB^\"<9\u000bT\'>o\u0014C1:\u0007_cdm/F]xe\"\u001b\n((#\u001ccd\u0008v\u0016Z+5k\u0013[5,5.\u0012\u0015y<DH{aj\u0016C1:\u0007_cd<<\u0010T\u007f51EY|g9\u0010^5,5.\u0012\u0015y3\u001e\\#b:\u000b^p1(\u0011\u0008((#\u001ccd\u0008v\u0018G(8+\u0016S9(#\u001ccd\u0008v\u0019X+18\u001aK?(#\u001ccd\u0008v\u0008\\\".:\u001a\u00165-\u0000\u0017K<\t\'\u0008d(9,/\u0016"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_8

    :cond_3
    move-object v4, v1

    move v5, v3

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_4
    aget-char v7, v2, v3

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2

    const/16 v6, 0x5b

    :goto_5
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_7

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_4

    :pswitch_2
    const/16 v9, 0x72

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x3f

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x49

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x54

    goto :goto_2

    :pswitch_6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->c:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/c/t;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/c/t;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "[C"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_6

    :cond_4
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_6
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_3

    const/16 v5, 0x5b

    :goto_7
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_5

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x72

    goto :goto_7

    :pswitch_8
    const/16 v5, 0x3f

    goto :goto_7

    :pswitch_9
    const/16 v5, 0x49

    goto :goto_7

    :pswitch_a
    const/16 v5, 0x54

    goto :goto_7

    :cond_5
    move v1, v0

    move-object v0, v3

    :cond_6
    if-gt v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/c/t;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->d:Ljava/util/regex/Pattern;

    const-string v1, ")^d.\u001a_eyyb.\u0014\u0015z\u0007-cl\u0008v.\u0014\u0014/j^\r|b&.\u007f\u00125v\u0008~d\u000ek_\u0006\u0014\u000f:_E\u0008y\u0001B\u0012p\u0008v/DyxmFBa\u0008u)^d.\u001a_eyyb/d(y!3\u0012\u0013dvKcd\t B\u0013{a&[\u0014"

    const/4 v0, 0x2

    goto/16 :goto_3

    :pswitch_b
    const/16 v6, 0x72

    goto/16 :goto_5

    :pswitch_c
    const/16 v6, 0x3f

    goto/16 :goto_5

    :pswitch_d
    const/16 v6, 0x49

    goto/16 :goto_5

    :pswitch_e
    const/16 v6, 0x54

    goto/16 :goto_5

    :cond_7
    move v2, v1

    move-object v1, v4

    :cond_8
    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_4

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->a:Ljava/util/regex/Pattern;

    const-string v1, "Z\u0017vns\u001aK=$\'\u001aK=$(\u000ew= +\u000ew= +\u0001C; (\u0002C\u001b (\u0002\u0016s\u0008t.\u0010akaZ\u0000s\u000f:_E\u0008y\u0001B\u0012p\u0008\u007f.\u0012\u0015\u000b\u0007\\cb\u0008z.\u0015\u0015s\u0007Zc`\u0008w.\u0004\u0015k\u0007Tct\t\'Z\u0000s\u0008~)^d2\u001a_yyyb/D{)r[DxxmFBaka.\u0005aka)^d.\u001a_eyyb.\u001b\u0015y\u0007-cg\u0008p.\u001e\u0015~\u0007Uca\u0008r.\u0013\u0015o\u0007Mco\u0008f/Caka.\u001a\u00125v\u0014~d\u0012k_\u0006\u0014/i\u000f\u0016`/j^\r|)rMc\t}d[\u0000a|dH\u0017vn\u0000\u0013\u00123\u0015v(\u000fdm\u00fb_\ud7c0\uf949y\ufd94\ufd82\u0012\uffa6\t\u0000\u0013\u00123\u0015v(\u000fdm\u00fb_\ud7c0\uf949y\ufd94\ufd82\u0012\uffa6\u0008v/DyxmFB\u0015zrY\u0017vnsM\u0005(1)\u001dC(&+\u0013C(\'2\u0013C(\u000f8\u0016Z/32\u001eR\';*\u0000L=!,\nE\u0014}\'Z\u0000s62\u0008C+\u000f:\u0010[,2<\u001aV#95\u001dM: -\u0005F3\tr\u000e\u0017vn8\u0013K574\u001fC*;4\u0002C*\u000f:\u0011[/33\u001bT%95\u001dM<\"#\u000bE\u0014}\'\u0016d,>0\u001fP3\t\'Z\u0000s1?\u0007C,\u000f8\u0017X;\'/\u0007b`(=)V#?6\u001dM\u0014(sM\u0005.;-\u000eX\u001259\u0016Z/33\u001bS$:+\u0003M: .\u0005F\u0014}\'\u001ad\"95\u0000K<\t\'Z\u0000s=5\u0014P5=5\u0006C \u000f?\u0017S$:4\u0003M: \u0006[Caka\u0018P+\'\'\u0018d,94\u0002b`(0)Z.<2\u001fQ9&,\u000bE\u0014(7)^+72\u0019M: .\u0004F\u0014(sM\u0005$=7\u000eR&62\u000eR<\'>\u0007R59\u0000\u0013\\-1<\u001aT%95\u001dO8&(\u0006J?##\u000bE\u0014}\'Z\u0000s::\u001fZ5:>\u0006C\'\u000f:\u0011Z/32\u001eP9&.\u0008b`(sM\u0005&&<\u000eP$}\'Z\u0000s$)\u001dC9\u000f:\u0017Y.<0\u001eR\'&(\u0006H0\tr\u000eN(())Z&\'.\u0005b5\'\u0000\u0013]*0>\u0015W >0\u001eR\';)\u0006J?-!/Caka\u0006Z%(/\u0000^?17\u000eK\u00127?\u0014X!>0\u001eR\';+\u0000K?#!/\u00165!\u0000\u0013X\"\'\"\u0008b5\"\u0000\u0013\\,32\u001cJ\u0014(,)Y:\t\'Z\u0000s,5.\u0012\u0015yk\u0008H$am\u0016C1:\u0007_cdej\u0010\n+\'h\u0013\u0006(>m\u0015C1:\u0007_cdlk\u0013T!6\"\u0019Q#`=\u000eG\'\u0008v.\u0012p o\u0010\u000ex-2G^5,5.\u0012\u0015y?\u0017](d:\u0016C1:\u0007_cd3m\u0005\r|e?\u000eG\'\u0008v.\u0012!39\u0019\t(>l\u0014\nz69\u0013C1:\u0007_cd<7\u0011U\u007f5\"\u0013\u0006,\'8E^5,5.\u0012\u0015y1\n^%$?\u001eO5,5.\u0012\u0015y0\u0015],73\u0006I5,5.\u0012\u0015y!\u0011T353[C0\u000f>\u0006J\u0014(!)^$#\u0006[\u00165|dH\u0017vniGdyyn/C{\u000fk_\u000b\u0014\u000fk_\u0006\u0014(\u0000B\u0012x\t\u0000B\u0012p\t @B5\u000fj_\u0006\u0014\u000fk_\u0006\u0014(\u0000C\u0012p\tr.\u0011aka@\n\u0012dvGb5f\u0000B\u0012}\t\u0000B\u0012p\t\')\u000fde\u0006)\u000fdm\u0006\t\r4(\u0000C\u0012p\t\u0000B\u0012p\t\')\u000edm\u0006\u000e\u000f`\u0008uZ\u0000sfn)\u000fda\u0006\u000e\r\u0012dvFb\u0012dvKb5\u000fk_\u000e\u0014\u000fk_\u0006\u0014/i\u000fC\u0012evKb\u0012dvKb5\u000fj_\u0006\u0014(k[cg|dH\r|\u000fk_\n\u0014(i)\u000fd`\u0006)\u000fdm\u0006\u000edyyj/dyyb/D{)\')\u000edm\u0006)\u000fdm\u0006\u000edyyb/\u0016`}sM\u0005\u0015n\u0007\u0016Dxxn\u000f\u0016v}s.\u0010akaZ\u0000s\u000f:_E\u0008y\u0001B\u0012p\u00f4v\ud78d\uf93fd\ufd9b\ufdab_\uffd0\u0015o\u0007]cv\u0008a.\u007f\u0015r\u0007Ocj\u0008%.\u0012\u0015z\u0007Ych\u0008q.\u0018\u0015|\u0007[ce\u0008\u0004/\u00165|dHcl\u000f:_Y\u0008y\u001dB\u0012p\t @B`}q[\u0000aka.]5pr"

    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->b:Ljava/util/regex/Pattern;

    const-string v1, "Z\u0017{a\u0000B\u0012|\t\'@dyyo/dyyb/C\u0012dvCb\u0012dvKb2f&\u000edxyb/dyyb/C\u0012evKb`\u0008uZ\r|\u000fk_\n\u0014(i)\u000fd`\u0006)\u000fdm\u0006\u000edyyj/dyyb/D{)\')\u000edm\u0006)\u000fdm\u0006\u000edxyb/Cy}\u0007\\\u0017{a\u0000B\u0012|\t\'@dyyo/dyyb/C\u0012dvCb\u0012dvKb2f&\u000edxyb/dyyb/C\u0012evKb5dr.\u0011afn)\u000fda\u0006\u000e\r\u0012dvFb\u0012dvKb5\u000fk_\u000e\u0014\u000fk_\u0006\u0014/i\u000fC\u0012evKb\u0012dvKb5\u000fk_\u0006\u0014}r"

    const/4 v0, 0x1

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->e:Ljava/util/regex/Pattern;

    const-string v1, "Zcb\u000fk_\u0006\u0014\u007f\u0000.\u0012i\u0008u/\u0015`ks.\u0017\u0012dvKbb\u0008r)cdt\u0007\\bc}dZdyyb/dyyb.\u0012i\u0008u/dyyb.\u0012i\u0008u/\u0014\u0012dvKb`"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/t;->f:Ljava/util/regex/Pattern;

    return-void

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    sget v0, Lcn/jpush/android/api/c;->g:I

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_4

    sget v0, Lcn/jpush/android/api/c;->f:I

    goto :goto_0

    :cond_4
    sget-object v3, Lcn/jpush/android/c/t;->z:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/jpush/android/api/c;->e:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/jpush/android/c/t;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    sget v0, Lcn/jpush/android/api/c;->d:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/c/t;->z:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcn/jpush/android/api/c;->c:I

    goto :goto_0
.end method
