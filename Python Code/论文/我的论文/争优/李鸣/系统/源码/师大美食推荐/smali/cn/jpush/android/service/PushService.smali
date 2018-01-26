.class public Lcn/jpush/android/service/PushService;
.super Landroid/app/Service;


# static fields
.field private static A:Z

.field private static B:Z

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:I

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:I

.field private static I:I

.field private static J:Ljava/lang/String;

.field private static P:Z

.field private static Q:Z

.field private static R:I

.field private static T:Z

.field private static U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static a:J

.field private static aa:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcn/jpush/android/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private static ab:Ljava/lang/String;

.field private static ac:Ljava/lang/String;

.field private static ad:Ljava/lang/String;

.field public static b:Z

.field private static final bb:[Ljava/lang/String;

.field public static c:Z

.field public static d:I

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:I

.field public static i:J

.field public static j:J

.field public static k:Ljava/lang/String;

.field public static l:I

.field public static m:Z

.field public static n:Z

.field protected static o:J

.field protected static p:Ljava/lang/String;

.field protected static q:Ljava/lang/String;

.field public static v:Z

.field public static w:Ljava/lang/String;

.field public static x:Z

.field public static y:Z

.field public static z:I


# instance fields
.field private K:Lcn/jpush/android/service/j;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private S:Lcn/jpush/android/b/d;

.field private V:I

.field private W:I

.field private X:J

.field private Y:J

.field private Z:I

.field private ae:Landroid/os/Handler;

.field protected r:I

.field protected s:[B

.field t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xc7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "x\u001ba\u0015"

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

    const/16 v9, 0x77

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

    const-string v1, "t\u0010Z\u0004\u0004i\u0002z\u0015%i\u0000"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "o\u0017k"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "n\u0010g\u000e"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "p0|\u0000\u0005i,f4\u0004x\u0011X\u0013\u0012n\u0006f\u0015"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "{\u0002d\u0012\u0012"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "h\u0010x"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "n\rk"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "N\u0006|A\u001aN\u0017i\u0013\u0003R\rF\u0004\u0003j\u000cz\n4r\rf\u0004\u0014i\u0006lA\u0003rC"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "N\u0006|A$I\"Z5(N&Z7>^&W.9B,X$9=\u0017gA"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "p*f\u0015\u0012o\u0015i\r"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "H\u0013l\u0000\u0003xCz\u0015\u0014=\nf\u0015\u0012o\u0015i\rWi\u000c("

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "i\u0011}\u0004"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "N\u0006|A\u001aN\u0017i\u0013\u0003R\r]\u0012\u0012o3z\u0004\u0004x\r|A\u0003rC"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "1Ce\u0012\u0010^\u000cf\u0015\u0012s\u00172"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "M\u0016{\t$x\u0011~\u0008\u0014x"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O$I,X1\"N+"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O\"S1M&>N7Z #T,F"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "|\u0000|\u0008\u0018sYg\u000f%x\u0000~\"\u0018p\u000ei\u000f\u0013\'C"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O9R7A\'>^\"\\(8S<Z$4X*^$3B3Z./D"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "P\u0006{\u0012\u0016z\u0006(\'\u001ex\u000fl\u0012W0Ci\u0011\u0007T\u00072"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "T\r~\u0000\u001bt\u0007(\u001b\u001em%d\u0000\u0010=\n{AM="

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "p\u0010o5\u000em\u0006(\\W"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "1C{\u0004\u0019y\u0006z(\u0013\'"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "3\u0013m\u0013\u001at\u0010{\u0008\u0018sMB1\"N+W,2N0I&2"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "H\rm\u0019\u0007x\u0000|\u0004\u0013\'C}\u000f\u001cs\u000c\u007f\u000fWp\u0010oA\u0003d\u0013mAZ"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "p\u0006{\u0012\u0016z\u0006"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O%X0\\.%X3]2?"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "O\u0006l\u0014\u0007q\nk\u0000\u0003xCe\u0012\u0010=N("

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O%X$A2#O\"\\(8S"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "n\u0006f\u0005\u0012o*l"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "1Ce\u0012\u0010T\u0007(\\W"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "[\u0002a\r\u0012yC|\u000eWo\u0006x\u000e\u0005iCz\u0004\u0014x\n~\u0004\u0013=N("

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "I\u000bmA\u0007|\u0000c\u0000\u0010xCd\u0004\u0019z\u000b|A\u001enC2A"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0015\u0018=\u0011m\u0011\u0018o\u0017(\u0013\u0012~\u0006a\u0017\u0012yC%A"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "*\u0005m\u0007A|TlVA~T0S\u0015,\u00058\u0004\u0013|W<W\u0015/\u0000>\u0002C-\u0002"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "I\ne\u0004Wi\u000c(\u0011\u0005r\u0000m\u0012\u0004=\u0011m\u0002\u0012t\u0015m\u0005Wp\u0010oO"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "H\rc\u000f\u0018j\r(\u0002\u001ayC%A"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "g\nx\'\u001b|\u0004(\u0008\u0004=Y("

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "|\u0013x(\u0013"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "m\u000fi\u0015\u0011r\u0011e"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "AGTE"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "X\u0011z\u000e\u0005=\u0017i\u0006\u0016q\ni\u0012"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "x\ri\u0003\u001bx `\u0000\u0019s\u0006dM"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0016\u001ei\u000b(\u0012\u0012l*lAW0C"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "n\u0006y\u0014\u0012s\u0000m"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "s\u0016d\rW~\u0002d\r\u0015|\u0000cAW0C"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "~\u000cl\u0004"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "n\u0006z\u0017\u0012oCk\u000e\u0019{\noA\u0004h\u0000k\u0004\u0004n"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "t\u0010I\u000f\u0004j\u0006z"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "x\u0011z\u000e\u0005n"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "X\ri\u0003\u001bx `\u0000\u0019s\u0006d3\u0012l\u0016m\u0012\u0003=\u0002x\u0011[=\u0010m\u000f\u0013x\u0011(\u0004\u0005o\u000cz[W8\u0010(D\u0004"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "X\ri\u0003\u001bxCK\t\u0016s\rm\rWn\u0016k\u0002\u0012n\u00102A"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "I\u000bmA\u0004x\u0011~\u0008\u0014xC\u007f\u0008\u001bqCc\u0008\u001bqCa\u0015\u0004x\u000fnA\u001esC"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "8\u0010&\u0011\u0012o\u000ea\u0012\u0004t\u000cfO=M6[)(P&[26Z&"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "n\u0006f\u0005\u0012oCA%M="

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "h\nl\\Ry"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "m\u0002k\n\u0016z\u0006(\u000f\u0016p\u00062A"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMI1\'V&Q"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "o\u0006{\u00114r\u0007m\\Ry"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "r\rZ\u0004\u0014\\\u0000c[Wn\u0006y(\u0013=^("

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "r\rL\u0004\u0004i\u0011g\u0018W0Cx\u0013\u0018~\u0006{\u0012>yY"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "p7`\u0013\u0012|\u0007(\u0008\u0004=\rg\u0015Wt\u0010I\r\u001ek\u0006$A\u0005x\u0010|\u0000\u0005iC|\t\u0012=\u0017`\u0013\u0012|\u0007$A\u001eyC5A"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "p7`\u0013\u0012|\u0007(\u0008\u0004=\r}\r\u001b1Cz\u0004\u0004i\u0002z\u0015Wi\u000bmA\u0003u\u0011m\u0000\u00131Ca\u0005W C"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "q\u0000|\u0008\u001ax"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "y\u0006~>\u001es\u0005g>\u0005x\u0013W\u0015\u001ep\u0006"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "Z\u0006|AWi\u0000xA\u0013|\u0017iA\u0011o\u000ceA3_O(\u0015\u001fxCk\u000e\u0002s\u0017(\u0008\u0004\'C"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "Z\u0006|A\u0003~\u0013(\u0005\u0016i\u0002(\u0007\u0005r\u000e(%5\'C"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "o\u0006x>\u001ey"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "i\u0000x>\u0013|\u0017i"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\\\u000fi\u0013\u001a=\u0010|\u0000\u0005i\u0006lA\u0000t\u0017`A\u001es\u0017m\u0013\u0001|\u000f2ARy\u0010"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "n\u0017i\u0013%i\u0000(\u0016\u001ei\u000b(\u000c>s\u0017m\u0013\u0001|\u000f(\\W"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x48

    const-string v1, "|\u000fi\u0013\u001a"

    const/16 v0, 0x47

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x49

    const-string v1, "p7`\u0013\u0012|\u0007(\u0008\u0004=\u0002d\u0008\u0001xCa\u0005W C"

    const/16 v0, 0x48

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x4a

    const-string v1, "i\u0002o\u0012"

    const/16 v0, 0x49

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x4b

    const-string v1, "|\u000fa\u0000\u0004"

    const/16 v0, 0x4a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x4c

    const-string v1, "M\u0011m\u0007\u0004[\nd\u0004"

    const/16 v0, 0x4b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x4d

    const-string v1, "r\rL\u0008\u0004~\u000cf\u000f\u0012~\u0017m\u0005"

    const/16 v0, 0x4c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x4e

    const-string v1, "r\rL\u0008\u0004~\u000cf\u000f\u0012~\u0017m\u0005W|\rlA\u0005x\u0017z\u0018WP0O><X&X>6Q*^$(S,E ;="

    const/16 v0, 0x4d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x4f

    const-string v1, "=\u000fi\u0015\u0012o"

    const/16 v0, 0x4e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x50

    const-string v1, "o\u0017kA\u001esC"

    const/16 v0, 0x4f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x51

    const-string v1, "1Cz\u0004\u0003\'"

    const/16 v0, 0x50

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x52

    const-string v1, "[\u0002a\r\u0012yC|\u000eWo\u0006x\u000e\u0005iCx\u0004\u0005p\n{\u0012\u001er\r(\u0008\u0019{\u000c(LWm\u0002o\u0004M="

    const/16 v0, 0x51

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    const/16 v2, 0x53

    const-string v1, "1A"

    const/16 v0, 0x52

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_52
    aput-object v1, v3, v2

    const/16 v2, 0x54

    const-string v1, "fA|\u000e\u0003|\u000f*[RyO*\u0011\u0016z\u0006*[RyO*\u0012\u0012s\u0007m\u0013\u001eyA2CRnA$C\u0002t\u0007*[RnO*\u0011\u0012o\u000ea\u0012\u0004t\u000cf>\u001bt\u0010|CM8\u0010u"

    const/16 v0, 0x53

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_53
    aput-object v1, v3, v2

    const/16 v2, 0x55

    const-string v1, "i\u0002o\u0000\u001bt\u0002{AJ="

    const/16 v0, 0x54

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_54
    aput-object v1, v3, v2

    const/16 v2, 0x56

    const-string v1, "t\r~\u0000\u001bT\u0006e\u0008W{\u0011g\u000cWn\u0006z\u0017\u0012oC#A"

    const/16 v0, 0x55

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_55
    aput-object v1, v3, v2

    const/16 v2, 0x57

    const-string v1, "=\u000eX\u000e\u0005iC5A"

    const/16 v0, 0x56

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_56
    aput-object v1, v3, v2

    const/16 v2, 0x58

    const-string v1, ",M>OG"

    const/16 v0, 0x57

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_57
    aput-object v1, v3, v2

    const/16 v2, 0x59

    const-string v1, "\u4e10\u535a\u9145"

    const/16 v0, 0x58

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_58
    aput-object v1, v3, v2

    const/16 v2, 0x5a

    const-string v1, "m\u0008(\u0017\u0012o\u0010a\u000e\u0019\'C"

    const/16 v0, 0x59

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_59
    aput-object v1, v3, v2

    const/16 v2, 0x5b

    const-string v1, "\u5318\u546e2A"

    const/16 v0, 0x5a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5a
    aput-object v1, v3, v2

    const/16 v2, 0x5c

    const-string v1, "|\rl\u0013\u0018t\u0007&\u0011\u0012o\u000ea\u0012\u0004t\u000cfO%X\"L>\'U,F$(N7I52"

    const/16 v0, 0x5b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5b
    aput-object v1, v3, v2

    const/16 v2, 0x5d

    const-string v1, "o\u0006o\u0008\u0004i\u0006zA\u0004h\u0000k\u0004\u0012yY(\u0014\u001ey^"

    const/16 v0, 0x5c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5c
    aput-object v1, v3, v2

    const/16 v2, 0x5e

    const-string v1, "O\u0006o\u0008\u0004i\u0006zA%x\u0000~A\u0011|\nd\u0004\u0013=N(\u0013\u0012iY"

    const/16 v0, 0x5d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5d
    aput-object v1, v3, v2

    const/16 v2, 0x5f

    const-string v1, "O\u0006o\u0008\u0004i\u0006z[W"

    const/16 v0, 0x5e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5e
    aput-object v1, v3, v2

    const/16 v2, 0x60

    const-string v1, "O\u0006o\u0008\u0004i\u0006zA1|\nd\u0004\u0013=\u0014a\u0015\u001f=\u0006z\u0013\u0018oCk\u000e\u0013xY("

    const/16 v0, 0x5f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5f
    aput-object v1, v3, v2

    const/16 v2, 0x61

    const-string v1, "y\u0006z\u0017\u001ex*lAJ="

    const/16 v0, 0x60

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_60
    aput-object v1, v3, v2

    const/16 v2, 0x62

    const-string v1, "x\u0011z\u000e\u0005=\u0007m\u0012\u0014o\nx\u0015\u001er\r2k"

    const/16 v0, 0x61

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_61
    aput-object v1, v3, v2

    const/16 v2, 0x63

    const-string v1, "m\u000bg\u000f\u0012"

    const/16 v0, 0x62

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_62
    aput-object v1, v3, v2

    const/16 v2, 0x64

    const-string v1, "\u4e13CI\u0011\u0007V\u0006q["

    const/16 v0, 0x63

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_63
    aput-object v1, v3, v2

    const/16 v2, 0x65

    const-string v1, "o\u0006o\u0008\u0004i\u0011i\u0015\u001er\rW\u0008\u0013"

    const/16 v0, 0x64

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_64
    aput-object v1, v3, v2

    const/16 v2, 0x66

    const-string v1, "9G"

    const/16 v0, 0x65

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_65
    aput-object v1, v3, v2

    const/16 v2, 0x67

    const-string v1, "T\ra\u0015Wj\n|\tW0C"

    const/16 v0, 0x66

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_66
    aput-object v1, v3, v2

    const/16 v2, 0x68

    const-string v1, "O\u0006o\u0008\u0004i\u0006zA\u0010x\u0017(\u0000Wx\u0011z\u000e\u0005=\u0000g\u000c\u001a|\rlA"

    const/16 v0, 0x67

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_67
    aput-object v1, v3, v2

    const/16 v2, 0x69

    const-string v1, "o\u0006o\u0008\u0004i*LAJ="

    const/16 v0, 0x68

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_68
    aput-object v1, v3, v2

    const/16 v2, 0x6a

    const-string v1, "H\u0010mAWm\u000cz\u0015M="

    const/16 v0, 0x69

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_69
    aput-object v1, v3, v2

    const/16 v2, 0x6b

    const-string v1, "AG"

    const/16 v0, 0x6a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6a
    aput-object v1, v3, v2

    const/16 v2, 0x6c

    const-string v1, "H\u0010mA$T0(\u0011\u0018o\u00172A"

    const/16 v0, 0x6b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6b
    aput-object v1, v3, v2

    const/16 v2, 0x6d

    const-string v1, "Y-[A\u001es\u0005gA\u001enY("

    const/16 v0, 0x6c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6c
    aput-object v1, v3, v2

    const/16 v2, 0x6e

    const-string v1, "N*[A%x\u0000m\u0008\u0001x\u0007(2\u0003o\nf\u0006M="

    const/16 v0, 0x6d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6d
    aput-object v1, v3, v2

    const/16 v2, 0x6f

    const-string v1, "Z\u0006|A\u0004x\u0011~\u0004\u0005=\nxA\u0012o\u0011g\u0013Wj\n|\tM="

    const/16 v0, 0x6e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6e
    aput-object v1, v3, v2

    const/16 v2, 0x70

    const-string v1, "t\u0013{"

    const/16 v0, 0x6f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6f
    aput-object v1, v3, v2

    const/16 v2, 0x71

    const-string v1, "N\u0006|A\u001aY\u0006n\u0000\u0002q\u0017X\u000e\u0005iC5A"

    const/16 v0, 0x70

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_70
    aput-object v1, v3, v2

    const/16 v2, 0x72

    const-string v1, "p3g\u0013\u0003"

    const/16 v0, 0x71

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_71
    aput-object v1, v3, v2

    const/16 v2, 0x73

    const-string v1, "p*X"

    const/16 v0, 0x72

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_72
    aput-object v1, v3, v2

    const/16 v2, 0x74

    const-string v1, "N\u0006|A\u0013x\u0005i\u0014\u001bi*XAJ="

    const/16 v0, 0x73

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_73
    aput-object v1, v3, v2

    const/16 v2, 0x75

    const-string v1, "p }\u0013\u0005x\r|2\u001en3g\u0012"

    const/16 v0, 0x74

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_74
    aput-object v1, v3, v2

    const/16 v2, 0x76

    const-string v1, "u\u0017|\u0011(o\u0006x\u000e\u0005i<{\u0008\u0004B\u0016z\r"

    const/16 v0, 0x75

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_75
    aput-object v1, v3, v2

    const/16 v2, 0x77

    const-string v1, "N*[A$h\u0000k\u0004\u0004n"

    const/16 v0, 0x76

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_76
    aput-object v1, v3, v2

    const/16 v2, 0x78

    const-string v1, "o\u0006o\u0008\u0004i\u0011i\u0015\u001er\r((3\'C"

    const/16 v0, 0x77

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_77
    aput-object v1, v3, v2

    const/16 v2, 0x79

    const-string v1, "o\u0006o\u0008\u0004i\u0011i\u0015\u001er\r(\u0007\u0016t\u000fm\u0005M=Fl"

    const/16 v0, 0x78

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_78
    aput-object v1, v3, v2

    const/16 v2, 0x7a

    const-string v1, "8S:9"

    const/16 v0, 0x79

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_79
    aput-object v1, v3, v2

    const/16 v2, 0x7b

    const-string v1, "o\u0006k\u0004\u001ek\u0006lES"

    const/16 v0, 0x7a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7a
    aput-object v1, v3, v2

    const/16 v2, 0x7c

    const-string v1, "n\u0017g\u0011\'h\u0010`M"

    const/16 v0, 0x7b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7b
    aput-object v1, v3, v2

    const/16 v2, 0x7d

    const-string v1, "|\u0013xA\u0007|\u0000c\u0000\u0010xCf\u0000\u001axCd\u0004\u0019z\u0017`AJ=C"

    const/16 v0, 0x7c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7c
    aput-object v1, v3, v2

    const/16 v2, 0x7e

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMZ$0T0\\36I*G/(T\'"

    const/16 v0, 0x7d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7d
    aput-object v1, v3, v2

    const/16 v2, 0x7f

    const-string v1, "i\u0002o\u00126s\u0007I\r\u001e|\u0010,E"

    const/16 v0, 0x7e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7e
    aput-object v1, v3, v2

    const/16 v2, 0x80

    const-string v1, "P\u0006z\u0006\u0012yC|\u0000\u0010\\\rl \u001bt\u0002{A"

    const/16 v0, 0x7f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7f
    aput-object v1, v3, v2

    const/16 v2, 0x81

    const-string v1, "H&"

    const/16 v0, 0x80

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_80
    aput-object v1, v3, v2

    const/16 v2, 0x82

    const-string v1, "o\u0006x\u000e\u0005iO"

    const/16 v0, 0x81

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_81
    aput-object v1, v3, v2

    const/16 v2, 0x83

    const-string v1, "H\rc\u000f\u0018j\r"

    const/16 v0, 0x82

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_82
    aput-object v1, v3, v2

    const/16 v2, 0x84

    const-string v1, "I\u000bmA\u0001x\u0011{\u0008\u0018s-i\u000c\u0012=\n{A\u0019r\u0017(\u0017\u0016q\nlMWM\u000fm\u0000\u0004xCk\t\u0012~\u0008(\u0018\u0018h\u0011( \u0019y\u0011g\u0008\u0013P\u0002f\u0008\u0011x\u0010|O\u000fp\u000f"

    const/16 v0, 0x83

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_83
    aput-object v1, v3, v2

    const/16 v2, 0x85

    const-string v1, "|\u000c\u007f"

    const/16 v0, 0x84

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_84
    aput-object v1, v3, v2

    const/16 v2, 0x86

    const-string v1, "t\u0010O\u0004\u0003Z\u000cg\u0006\u001bx\"l\u0005\u0005x\u0010{[W"

    const/16 v0, 0x85

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_85
    aput-object v1, v3, v2

    const/16 v2, 0x87

    const-string v1, "j\nn\u0008(i\u000c\u007f\u0004\u0005n"

    const/16 v0, 0x86

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_86
    aput-object v1, v3, v2

    const/16 v2, 0x88

    const-string v1, "|\u000fd"

    const/16 v0, 0x87

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_87
    aput-object v1, v3, v2

    const/16 v2, 0x89

    const-string v1, "q\u000ck5\u000em\u0006"

    const/16 v0, 0x88

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_88
    aput-object v1, v3, v2

    const/16 v2, 0x8a

    const-string v1, "~\u0006d\r(i\u000c\u007f\u0004\u0005n"

    const/16 v0, 0x89

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_89
    aput-object v1, v3, v2

    const/16 v2, 0x8b

    const-string v1, "~\u000cd5\u000em\u0006"

    const/16 v0, 0x8a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8a
    aput-object v1, v3, v2

    const/16 v2, 0x8c

    const-string v1, "t\u0010O\u0004\u0003Z\u000cg\u0006\u001bx\"l\u0005\u0005x\u0010{"

    const/16 v0, 0x8b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8b
    aput-object v1, v3, v2

    const/16 v2, 0x8d

    const-string v1, "z\u0013{"

    const/16 v0, 0x8c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8c
    aput-object v1, v3, v2

    const/16 v2, 0x8e

    const-string v1, "t\u0010D\u000e\u0014|\u0017a\u000e\u0019X\ri\u0003\u001bx\u0007"

    const/16 v0, 0x8d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8d
    aput-object v1, v3, v2

    const/16 v2, 0x8f

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0015\u0018=\u0010m\u0015Wm\u0016{\t#t\u000emAZ="

    const/16 v0, 0x8e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8e
    aput-object v1, v3, v2

    const/16 v2, 0x90

    const-string v1, "[\u0002a\r\u0012yC|\u000eWn\u0006|A\u0007h\u0010`5\u001ep\u0006(LWo\u0006|[W"

    const/16 v0, 0x8f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8f
    aput-object v1, v3, v2

    const/16 v2, 0x91

    const-string v1, "p%a\u0013\u0004i/g\u0006\u0010x\u0007A\u000f"

    const/16 v0, 0x90

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_90
    aput-object v1, v3, v2

    const/16 v2, 0x92

    const-string v1, "T\r~\u0000\u001bt\u0007(%\u0012^\u000bi\u000f\u0019x\u000f(\u0002\u0018p\u000ei\u000f\u0013\'C"

    const/16 v0, 0x91

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_91
    aput-object v1, v3, v2

    const/16 v2, 0x93

    const-string v1, "T\r~\u0000\u001bt\u0007(\u0012\u0012i7i\u0006\u0004\\\rl \u001e|\u0010(\u0002\u0018p\u000ei\u000f\u0013\'C"

    const/16 v0, 0x92

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_92
    aput-object v1, v3, v2

    const/16 v2, 0x94

    const-string v1, "T\r~\u0000\u001bt\u0007($\u0019|\u0001d\u00044u\u0002f\u000f\u0012qCk\u000e\u001ap\u0002f\u0005M="

    const/16 v0, 0x93

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_93
    aput-object v1, v3, v2

    const/16 v2, 0x95

    const-string v1, "T\r~\u0000\u001bt\u0007(\u0013\u0012m\u000cz\u0015Wo\u0006k\u0004\u001ek\u0006lA\u0014r\u000ee\u0000\u0019yY("

    const/16 v0, 0x94

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_94
    aput-object v1, v3, v2

    const/16 v2, 0x96

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0015\u0018=&f\u0000\u0015q\u0006K\t\u0016s\rm\rW0C"

    const/16 v0, 0x95

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_95
    aput-object v1, v3, v2

    const/16 v2, 0x97

    const-string v1, "[\u0002a\r\u0012yC|\u000eWX\ri\u0003\u001bx `\u0000\u0019s\u0006dAZ=\u0011m\u0015M="

    const/16 v0, 0x96

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_96
    aput-object v1, v3, v2

    const/16 v2, 0x98

    const-string v1, "o\u0006k\u0004\u001ek\u0006l"

    const/16 v0, 0x97

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_97
    aput-object v1, v3, v2

    const/16 v2, 0x99

    const-string v1, "U\u0002f\u0005\u001bt\roA\u0005x\u0012}\u0004\u0004iY("

    const/16 v0, 0x98

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_98
    aput-object v1, v3, v2

    const/16 v2, 0x9a

    const-string v1, "N\u0006f\u0005WN\u0006|5\u0016z\u0010I\u000f\u0013\\\u000fa\u0000\u0004=\u0011m\u0010\u0002x\u0010|A\u0003rC{\u0004\u0005k\u0006zAZ="

    const/16 v0, 0x99

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_99
    aput-object v1, v3, v2

    const/16 v2, 0x9b

    const-string v1, "T\r~\u0000\u001bt\u0007(\u0012\u0012iCx\u0014\u0004u7a\u000c\u0012=\u0000g\u000c\u001a|\rl[W"

    const/16 v0, 0x9a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9a
    aput-object v1, v3, v2

    const/16 v2, 0x9c

    const-string v1, "[\u0002a\r\u0012yC|\u000eWo\u0006x\u000e\u0005iCa\u000f\u0011rC%A\u0005x\u00172"

    const/16 v0, 0x9b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9b
    aput-object v1, v3, v2

    const/16 v2, 0x9d

    const-string v1, "i\u0002o\u00126s\u0007I\r\u001e|\u0010"

    const/16 v0, 0x9c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9c
    aput-object v1, v3, v2

    const/16 v2, 0x9e

    const-string v1, "|\u0013x\u0008\u0013"

    const/16 v0, 0x9d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9d
    aput-object v1, v3, v2

    const/16 v2, 0x9f

    const-string v1, "o\u0006x\u000e\u0005i"

    const/16 v0, 0x9e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9e
    aput-object v1, v3, v2

    const/16 v2, 0xa0

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0015\u0018=\u0010|\u000e\u0007M\u0016{\tW0C"

    const/16 v0, 0x9f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9f
    aput-object v1, v3, v2

    const/16 v2, 0xa1

    const-string v1, "n\u0006f\u0005\u0012o\nl"

    const/16 v0, 0xa0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a0
    aput-object v1, v3, v2

    const/16 v2, 0xa2

    const-string v1, "m\u0016{\t#t\u000em"

    const/16 v0, 0xa1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a1
    aput-object v1, v3, v2

    const/16 v2, 0xa3

    const-string v1, "[\u0002a\r\u0012yC|\u000eWn\u0017g\u0011\'h\u0010`AZ=\u0011m\u0015M="

    const/16 v0, 0xa2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a2
    aput-object v1, v3, v2

    const/16 v2, 0xa4

    const-string v1, "N\u0016k\u0002\u0012x\u0007(\u0015\u0018=\u0011m\u0011\u0018o\u0017(\u0008\u0019{\u000c(LW"

    const/16 v0, 0xa3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a3
    aput-object v1, v3, v2

    const/16 v2, 0xa5

    const-string v1, "[\u0002a\r\u0012yC|\u000eWn\u0006|A\u0003|\u0004{ \u0019y\"d\u0008\u0016nC%A\u0005x\u00172A"

    const/16 v0, 0xa4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a4
    aput-object v1, v3, v2

    const/16 v2, 0xa6

    const-string v1, "x\ri\u0003\u001bx `\u0000\u0019s\u0006d"

    const/16 v0, 0xa5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a5
    aput-object v1, v3, v2

    const/16 v2, 0xa7

    const-string v1, "=Y("

    const/16 v0, 0xa6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a6
    aput-object v1, v3, v2

    const/16 v2, 0xa8

    const-string v1, "n\u0017g\u0011\'h\u0010`"

    const/16 v0, 0xa7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a7
    aput-object v1, v3, v2

    const/16 v2, 0xa9

    const-string v1, "|\u0013x"

    const/16 v0, 0xa8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a8
    aput-object v1, v3, v2

    const/16 v2, 0xaa

    const-string v1, "r\r[\u0015\u0016o\u0017K\u000e\u001ap\u0002f\u0005W0C{\u0015\u0016o\u0017A\u0005M"

    const/16 v0, 0xa9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a9
    aput-object v1, v3, v2

    const/16 v2, 0xab

    const-string v1, "~\u000fg\u0012\u0012m\u0016{\t"

    const/16 v0, 0xaa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_aa
    aput-object v1, v3, v2

    const/16 v2, 0xac

    const-string v1, "\\\u000fz\u0004\u0016y\u001a(2\u0012i3}\u0012\u001fI\ne\u0004[=\u0004a\u0017\u0012=\u0016xAZ="

    const/16 v0, 0xab

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ab
    aput-object v1, v3, v2

    const/16 v2, 0xad

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O>S*\\"

    const/16 v0, 0xac

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ac
    aput-object v1, v3, v2

    const/16 v2, 0xae

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O\'H0@>#T.M"

    const/16 v0, 0xad

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ad
    aput-object v1, v3, v2

    const/16 v2, 0xaf

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O%X3G3#"

    const/16 v0, 0xae

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ae
    aput-object v1, v3, v2

    const/16 v2, 0xb0

    const-string v1, "h\u0010m\u0013(z\u0011g\u0014\u0019y"

    const/16 v0, 0xaf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_af
    aput-object v1, v3, v2

    const/16 v2, 0xb1

    const-string v1, "{\u000cz\u0016\u0016o\u0007(\u0000\u0014i\ng\u000fM="

    const/16 v0, 0xb0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b0
    aput-object v1, v3, v2

    const/16 v2, 0xb2

    const-string v1, "m\u0016{\t\u0003t\u000em"

    const/16 v0, 0xb1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b1
    aput-object v1, v3, v2

    const/16 v2, 0xb3

    const-string v1, "|\u0000|\u0008\u0018sY`\u0000\u0019y\u000fm(\u0019{\u000cZ\u0004\u0007r\u0011|AZ="

    const/16 v0, 0xb2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b2
    aput-object v1, v3, v2

    const/16 v2, 0xb4

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O6Q*I2(I\"O2"

    const/16 v0, 0xb3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b3
    aput-object v1, v3, v2

    const/16 v2, 0xb5

    const-string v1, "\\\u000fz\u0004\u0016y\u001a(-\u0018z\u0004m\u0005WT\r"

    const/16 v0, 0xb4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b4
    aput-object v1, v3, v2

    const/16 v2, 0xb6

    const-string v1, "q\u000ck5\u000em\u0006{A\u001enY("

    const/16 v0, 0xb5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b5
    aput-object v1, v3, v2

    const/16 v2, 0xb7

    const-string v1, "n\u0006y>\u001ey"

    const/16 v0, 0xb6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b6
    aput-object v1, v3, v2

    const/16 v2, 0xb8

    const-string v1, "m\u0016{\t#t\u000emES"

    const/16 v0, 0xb7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b7
    aput-object v1, v3, v2

    const/16 v2, 0xb9

    const-string v1, "1C"

    const/16 v0, 0xb8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b8
    aput-object v1, v3, v2

    const/16 v2, 0xba

    const-string v1, "o\u0006{\u0015\u0016o\u0017W\u0013\u0003~"

    const/16 v0, 0xb9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b9
    aput-object v1, v3, v2

    const/16 v2, 0xbb

    const-string v1, "~\r&\u000b\u0007h\u0010`O\u0016s\u0007z\u000e\u001eyMa\u000f\u0003x\r|O\"N&Z>0O,]/3"

    const/16 v0, 0xba

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ba
    aput-object v1, v3, v2

    const/16 v2, 0xbc

    const-string v1, "A<"

    const/16 v0, 0xbb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bb
    aput-object v1, v3, v2

    const/16 v2, 0xbd

    const-string v1, "n\u0017g\u0011(i\u000bz\u0004\u0016y"

    const/16 v0, 0xbc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bc
    aput-object v1, v3, v2

    const/16 v2, 0xbe

    const-string v1, "u\u0002f\u0005\u001bx0|\u000e\u0007M\u0016{\tW|\u0013xMWn\u0006f\u0005\u0012oCm\u0013\u0005r\u00112ARnC-\u0012"

    const/16 v0, 0xbd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bd
    aput-object v1, v3, v2

    const/16 v2, 0xbf

    const-string v1, "AN"

    const/16 v0, 0xbe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_be
    aput-object v1, v3, v2

    const/16 v2, 0xc0

    const-string v1, "o\u0017k>\u0013x\u000fi\u0018"

    const/16 v0, 0xbf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bf
    aput-object v1, v3, v2

    const/16 v2, 0xc1

    const-string v1, "u\u0002f\u0005\u001bx0|\u000e\u0007M\u0016{\tWn\u0016k\u0002\u0012n\u00102A"

    const/16 v0, 0xc0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c0
    aput-object v1, v3, v2

    const/16 v2, 0xc2

    const-string v1, "N\u0006z\u0017\u001e~\u0006(\u0003\u0002s\u0007d\u0004W0C"

    const/16 v0, 0xc1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c1
    aput-object v1, v3, v2

    const/16 v2, 0xc3

    const-string v1, "p g\u000f\u0019x\u0000|\u0008\u0018sC5A"

    const/16 v0, 0xc2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c2
    aput-object v1, v3, v2

    const/16 v2, 0xc4

    const-string v1, "u\u0002f\u0005\u001bx0m\u0015\'h\u0010`5\u001ep\u0006(\u0012\u0002~\u0000m\u0012\u0004=N("

    const/16 v0, 0xc3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c3
    aput-object v1, v3, v2

    const/16 v2, 0xc5

    const-string v1, "x\u0002{\u0018\u0003r\u000em\u0012\u0004|\u0004mO\u0014r\u000e,"

    const/16 v0, 0xc4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c4
    aput-object v1, v3, v2

    const/16 v2, 0xc6

    const-string v1, "z\u000cg\u000f\u0014u\u0006k\nY~\u000ceE"

    const/16 v0, 0xc5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c5
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->c:Z

    const/4 v0, 0x2

    sput v0, Lcn/jpush/android/service/PushService;->d:I

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcn/jpush/android/service/PushService;->e:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcn/jpush/android/service/PushService;->f:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcn/jpush/android/service/PushService;->g:J

    const/16 v0, 0x12c

    sput v0, Lcn/jpush/android/service/PushService;->h:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->i:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->j:J

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->A:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->B:Z

    const-string v1, ",[;OE.Q&SN3R1Y"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_5

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

    const/16 v6, 0x77

    :goto_5
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_4

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_4

    :pswitch_c6
    const/16 v9, 0x1d

    goto/16 :goto_2

    :pswitch_c7
    const/16 v9, 0x63

    goto/16 :goto_2

    :pswitch_c8
    const/16 v9, 0x8

    goto/16 :goto_2

    :pswitch_c9
    const/16 v9, 0x61

    goto/16 :goto_2

    :pswitch_ca
    const/16 v6, 0x1d

    goto :goto_5

    :pswitch_cb
    const/16 v6, 0x63

    goto :goto_5

    :pswitch_cc
    const/16 v6, 0x8

    goto :goto_5

    :pswitch_cd
    const/16 v6, 0x61

    goto :goto_5

    :cond_4
    move v2, v1

    move-object v1, v4

    :cond_5
    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_3

    sput-object v1, Lcn/jpush/android/service/PushService;->k:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcn/jpush/android/service/PushService;->l:I

    const-string v1, ",R?OF.V&PA-M<V"

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_ce
    sput-object v1, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    const-string v1, "t\u000e&\u000b\u0007h\u0010`O\u0014s"

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_cf
    sput-object v1, Lcn/jpush/android/service/PushService;->D:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcn/jpush/android/service/PushService;->E:I

    const-string v1, "nMb\u0011\u0002n\u000b&\u0002\u0019"

    const/4 v0, 0x2

    goto :goto_3

    :pswitch_d0
    sput-object v1, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    const-string v1, ",R9OF.M<YY,S<"

    const/4 v0, 0x3

    goto :goto_3

    :pswitch_d1
    sput-object v1, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    const/16 v0, 0x2328

    sput v0, Lcn/jpush/android/service/PushService;->H:I

    const/4 v0, 0x0

    sput v0, Lcn/jpush/android/service/PushService;->I:I

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->m:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->n:Z

    const-string v1, "s\u0016d\r"

    const/4 v0, 0x4

    goto/16 :goto_3

    :pswitch_d2
    sput-object v1, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->o:J

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    const/16 v0, 0xa

    sput v0, Lcn/jpush/android/service/PushService;->R:I

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->v:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->T:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x88

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->x:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->y:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jpush/android/service/PushService;->U:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/service/PushService;->U:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/service/PushService;->U:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput v0, Lcn/jpush/android/service/PushService;->z:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/jpush/android/service/PushService;->aa:Ljava/util/Queue;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->ab:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->ac:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->ad:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
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
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcn/jpush/android/service/PushService;->r:I

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->s:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    iput-boolean v1, p0, Lcn/jpush/android/service/PushService;->N:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->O:Z

    new-instance v0, Lcn/jpush/android/service/i;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/i;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private B()V
    .locals 3

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;

    sget-boolean v1, Lcn/jpush/android/service/PushService;->y:Z

    sget-boolean v2, Lcn/jpush/android/service/PushService;->x:Z

    invoke-direct {p0, p0, v0, v1, v2}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/b/d;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->S:Lcn/jpush/android/b/d;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->S:Lcn/jpush/android/b/d;

    invoke-virtual {v0}, Lcn/jpush/android/b/d;->f()V

    return-void
.end method

.method private static a(IJLjava/lang/String;Ljava/lang/String;I)I
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->TagAlias(IJLjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    return v0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 4

    sget-wide v0, Lcn/jpush/android/service/PushService;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcn/jpush/android/service/PushService;->o:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    sget-wide v0, Lcn/jpush/android/service/PushService;->o:J

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;J)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->Y:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/b/d;
    .locals 6

    new-instance v0, Lcn/jpush/android/service/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/service/h;-><init>(Lcn/jpush/android/service/PushService;Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->E:I

    return-void
.end method

.method private a(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x7b

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    invoke-static {p1}, Lcn/jpush/android/c/q;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    :cond_1
    return-void

    :cond_2
    array-length v7, v6

    const-string v3, "["

    move v0, v1

    move v5, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v4, v6, v0

    if-nez v5, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    const/16 v5, 0x32

    if-ge v0, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x3e8

    if-gt v5, v8, :cond_3

    if-ne v4, v7, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x54

    aget-object v3, v3, v5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    aput-object p2, v5, v8

    const/4 v8, 0x3

    sget-wide v9, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x4

    aput-object v0, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-boolean v3, Lcn/jpush/android/service/PushService;->Q:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()V

    :cond_4
    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v3}, Lcn/jpush/android/service/j;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v8, Lcn/jpush/android/service/PushService;->o:J

    const/16 v5, 0x8

    invoke-static {v3, v8, v9, v5, v0}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x52

    aget-object v5, v5, v8

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x51

    aget-object v5, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    const-string v2, "["

    move-object v3, v2

    move v2, v0

    move v0, v1

    :cond_6
    move v5, v0

    move v0, v4

    goto/16 :goto_0

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0x53

    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;Z)V
    .locals 8

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v1}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    new-instance v0, Lcn/jpush/android/service/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {}, Lcn/jpush/android/c/a;->b()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-boolean v0, v0, Lcn/jpush/android/service/j;->a:Z

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3e

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v1}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->join()V

    new-instance v0, Lcn/jpush/android/service/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcn/jpush/android/c/r;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcn/jpush/android/c/a;->b()V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->X:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    invoke-static {}, Lcn/jpush/android/c/a;->b()V

    goto :goto_1

    :cond_5
    :try_start_4
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/PushProtocol;->HbJPush(IJ)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->V:I

    iget v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    sget v0, Lcn/jpush/android/c/ab;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/c/ab;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->X:J

    iget v0, p0, Lcn/jpush/android/service/PushService;->V:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->V:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcn/jpush/android/service/PushService;->Q:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcn/jpush/android/service/PushService;->T:Z

    if-eqz v2, :cond_a

    sget-wide v2, Lcn/jpush/android/service/PushService;->i:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x40

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcn/jpush/android/service/PushService;->i:J

    :cond_8
    sget-wide v2, Lcn/jpush/android/service/PushService;->i:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    sget-wide v2, Lcn/jpush/android/service/PushService;->i:J

    sub-long v2, v0, v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    sget-wide v2, Lcn/jpush/android/service/PushService;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    :cond_9
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->B()V

    sput-wide v0, Lcn/jpush/android/service/PushService;->i:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x40

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_a
    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x41

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcn/jpush/android/service/PushService;->j:J

    :cond_b
    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    sub-long v2, v0, v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->f:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_c
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/c/j;->a(Landroid/content/Context;)V

    sput-wide v0, Lcn/jpush/android/service/PushService;->j:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x41

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/a;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    if-eqz p2, :cond_2

    sget-object v0, Lcn/jpush/android/service/ServiceInterface;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    move v5, p2

    :goto_0
    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v5}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_1

    sget-wide v0, Lcn/jpush/android/service/PushService;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;)S

    move-result v5

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    sget-object v3, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushService;->a(IJLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcn/jpush/android/service/PushService;->h(I)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x33

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_2

    sget-wide v0, Lcn/jpush/android/service/PushService;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v0, v1, v2, p1, p2}, Lcn/jpush/android/service/PushProtocol;->EnChannel(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x3

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x7f

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    if-le v1, v4, :cond_1

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-static {v1, p1}, Lcn/jpush/android/service/PushService;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x7f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x80

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x7e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x36

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/service/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->A:Z

    return-void
.end method

.method private a(ZZ)V
    .locals 11

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eqz p2, :cond_3

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v0}, Lcn/jpush/android/service/PushProtocol;->Close(I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/service/PushService;->r:I

    :cond_0
    invoke-static {}, Lcn/jpush/android/service/PushProtocol;->InitConn()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x67

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x57

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/jpush/android/service/PushService;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-object v1, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    sget v2, Lcn/jpush/android/service/PushService;->E:I

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/PushProtocol;->InitPush(ILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v0}, Lcn/jpush/android/service/PushProtocol;->Close(I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/service/PushService;->r:I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->f(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/c/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x5c

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcn/jpush/android/c/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_4

    const-string v1, " "

    :cond_4
    if-nez v0, :cond_5

    const-string v0, " "

    :cond_5
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x66

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x58

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x5f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget v6, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/c/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, " "

    invoke-static {v2, v7}, Lcn/jpush/android/c/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, " "

    invoke-static {v7, v8}, Lcn/jpush/android/c/a;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v0, " "

    :cond_6
    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v1, " "

    :cond_7
    invoke-static {v2}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v2, " "

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcn/jpush/android/c/a;->a:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v10, 0x66

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0x66

    aget-object v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x66

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x66

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v3, v4, v5, v0}, Lcn/jpush/android/service/PushProtocol;->RegPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    const/16 v3, 0x1e

    invoke-static {v0, v2, v3}, Lcn/jpush/android/service/PushProtocol;->RecvPush(I[BI)I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v0}, Lcn/jpush/android/c/a;->a([B)I

    move-result v0

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v2}, Lcn/jpush/android/c/a;->b([B)I

    move-result v5

    sget-object v2, Lcn/jpush/android/c;->a:Lcn/jpush/android/c;

    invoke-virtual {v2}, Lcn/jpush/android/c;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_a

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v3, v0, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    if-nez v1, :cond_14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_3
    const/4 v0, 0x4

    if-ge v2, v0, :cond_b

    const/16 v0, 0x8

    shl-long v0, v3, v0

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v4, v2, 0x8

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    const/4 v0, 0x2

    if-ge v2, v0, :cond_c

    shl-int/lit8 v0, v1, 0x8

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v2, 0xc

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_c
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_5
    array-length v6, v2

    if-ge v0, v6, :cond_d

    iget-object v6, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v7, v0, 0xe

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x5d

    aget-object v6, v6, v7

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    sput-wide v3, Lcn/jpush/android/service/PushService;->o:J

    sput-object v0, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    :try_start_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x4c

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/jpush/android/service/PushService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-wide v3, Lcn/jpush/android/service/PushService;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v2, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    add-int/lit8 v2, v1, 0xe

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x2

    if-ge v0, v3, :cond_e

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int v4, v2, v0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_6

    :cond_e
    add-int/lit8 v2, v2, 0x2

    new-array v3, v1, [B

    const/4 v0, 0x0

    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_f

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int v6, v2, v0

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x69

    aget-object v4, v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x65

    aget-object v4, v4, v6

    invoke-static {v3, v4, v0}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a;->b:Ljava/lang/String;

    sget-object v4, Lcn/jpush/android/a;->f:Ljava/lang/String;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x1d

    aget-object v6, v6, v7

    invoke-direct {p0, v3, v4, v0, v6}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    add-int/2addr v2, v1

    if-ge v2, v5, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_9
    const/4 v3, 0x2

    if-ge v0, v3, :cond_11

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int v4, v2, v0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v2, v2, 0x2

    new-array v3, v1, [B

    add-int v0, v1, v2

    if-eq v5, v0, :cond_12

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    :goto_a
    array-length v1, v3

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int v4, v2, v0

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x61

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/c/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x3ef

    if-ne v1, v0, :cond_17

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x2

    if-ge v0, v2, :cond_15

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v3, v0, 0x8

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    new-array v1, v1, [B

    const/4 v0, 0x0

    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v3, v0, 0xa

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x56

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    invoke-static {v0}, Lcn/jpush/android/c/a;->c(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(ZZ)V

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x60

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/c/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jpush/android/service/l;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x62

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/c/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/16 v0, 0x3ee

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x3ef

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x3ed

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x5b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x64

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x59

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x5b

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x64

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x59

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x5e

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/c/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->Y:J

    goto/16 :goto_0

    :cond_1c
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->B:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->H:I

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;I)V
    .locals 1

    const/16 v0, 0x1770

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->g(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->D:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x7c

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->B:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;)Lcn/jpush/android/service/j;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    return-object v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->I:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->Q:Z

    return-void
.end method

.method protected static declared-synchronized c(Landroid/content/Context;)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x0

    const-class v2, Lcn/jpush/android/service/PushService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    :try_start_1
    new-array v3, v1, [B

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/FileInputStream;->read([BII)I

    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/jpush/android/service/PushService;->o:J

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_0

    sget-wide v5, Lcn/jpush/android/service/PushService;->o:J

    shl-long/2addr v5, v9

    aget-byte v7, v3, v1

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long/2addr v5, v7

    sput-wide v5, Lcn/jpush/android/service/PushService;->o:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v3, 0x0

    sput-wide v3, Lcn/jpush/android/service/PushService;->o:J

    :goto_2
    sget-wide v3, Lcn/jpush/android/service/PushService;->o:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v3, v10

    if-nez v1, :cond_2

    :goto_3
    monitor-exit v2

    return v0

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/service/PushService;->p:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcn/jpush/android/c/r;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_5
    sget-object v1, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcn/jpush/android/c/a;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/jpush/android/service/PushService;->j(I)Z

    move-result v0

    return v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->R:I

    return-void
.end method

.method static synthetic d(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->B()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {p1}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v6, :cond_3

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcn/jpush/android/service/PushService;->i(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->T:Z

    return-void
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4b

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4b

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4b

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4a

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4a

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4a

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->P:Z

    return p0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->ab:Ljava/lang/String;

    return-object p0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x82

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->ac:Ljava/lang/String;

    return-object p0
.end method

.method private g(I)V
    .locals 4

    const/16 v3, 0x3ec

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x4f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->ad:Ljava/lang/String;

    return-object p0
.end method

.method private h(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3f0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcn/jpush/android/service/PushService;->E:I

    return v0
.end method

.method private i(I)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    move v0, v1

    move v4, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v4, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v4, v0, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v0, v0, v2

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    const/16 v5, 0x8

    shl-long/2addr v2, v5

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v0, 0x8

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x38

    aget-object v0, v0, v5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v0, 0x64

    new-array v2, v0, [B

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v0, 0xc

    aget-byte v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v0, 0xc

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x39

    aget-object v2, v2, v5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v0, 0x1e

    new-array v2, v0, [B

    move v0, v1

    :goto_3
    array-length v5, v2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v0, 0x70

    aget-byte v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v0, 0x70

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x37

    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez v4, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x3a

    aget-object v2, v2, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x36

    aget-object v2, v2, v4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/service/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/api/c;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->a(I)Lcn/jpush/android/api/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x2c

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->b(I)V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->k(I)V

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v5, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v2, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    iget-object v2, v2, Lcn/jpush/android/api/b;->b:Ljava/util/Set;

    invoke-interface {v3, v1, v0, v2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    return v0
.end method

.method private j(I)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized k(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcn/jpush/android/service/PushService;->i(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x31

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    const/4 v3, 0x3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x30

    aget-object v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0
.end method

.method static synthetic k()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    return v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->ad:Ljava/lang/String;

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x8b

    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8e

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->T:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8e

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x86

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eq v0, v7, :cond_1

    if-nez v0, :cond_8

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_2

    if-nez v0, :cond_9

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-ne v2, v9, :cond_d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x89

    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x88

    aget-object v0, v0, v2

    if-eq v1, v7, :cond_3

    if-nez v1, :cond_a

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x88

    aget-object v0, v0, v1

    :cond_3
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/jpush/android/service/PushService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x89

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v4, v0, v4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x8c

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v4, v0, v4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x85

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcn/jpush/android/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    :goto_4
    return-void

    :cond_7
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8e

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_4

    :cond_8
    :try_start_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    if-ne v1, v8, :cond_b

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_b
    if-ne v1, v9, :cond_c

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x87

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x8d

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_d
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x85

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->x:Z

    :cond_e
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->y:Z

    :cond_f
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8e

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8e

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->T:Z

    :cond_10
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x89

    aget-object v0, v0, v3

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_11

    if-nez v0, :cond_12

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x88

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;

    :cond_11
    :goto_5
    if-nez v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    :cond_12
    if-ne v0, v8, :cond_13

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;

    goto :goto_5

    :cond_13
    if-ne v0, v9, :cond_14

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x87

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;

    goto :goto_5

    :cond_14
    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x8d

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->w:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    move v1, v0

    move v3, v0

    :goto_0
    if-ge v1, v10, :cond_0

    shl-int/lit8 v2, v3, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v4, v1, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    move v1, v0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v1, 0x8

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_2

    aget-byte v6, v2, v1

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x7a

    aget-object v7, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x78

    aget-object v2, v2, v5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    move v1, v0

    move v2, v0

    :goto_3
    if-ge v1, v10, :cond_3

    shl-int/lit8 v2, v2, 0x8

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v1, 0x10

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x7d

    aget-object v5, v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v1, 0x64

    new-array v1, v1, [B

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v0, 0x12

    aget-byte v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v0, 0x12

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x39

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez v3, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v4, p1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_5
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x79

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto :goto_5
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->ab:Ljava/lang/String;

    return-object v0
.end method

.method private n(Ljava/lang/String;)V
    .locals 12

    const/16 v7, 0x8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    move v1, v0

    move v4, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    shl-int/lit8 v2, v4, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v4, v1, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v1, 0x0

    move-wide v10, v1

    move-wide v2, v10

    move v1, v0

    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    shl-long/2addr v2, v7

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v1, 0x8

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x38

    aget-object v1, v1, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    move v1, v0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v5, v1, 0xc

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v2

    move v1, v0

    :goto_3
    if-ge v1, v5, :cond_3

    aget-byte v6, v2, v1

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x7a

    aget-object v7, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x78

    aget-object v3, v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v1, 0x64

    new-array v3, v1, [B

    move v1, v0

    :goto_4
    array-length v5, v3

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v1, 0x14

    aget-byte v5, v5, v6

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v1, 0x14

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v1}, Ljava/lang/String;-><init>([BII)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x39

    aget-object v3, v3, v6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/16 v1, 0x1e

    new-array v1, v1, [B

    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v0, 0x78

    aget-byte v3, v3, v6

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v6, v0, 0x78

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x37

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez v4, :cond_6

    invoke-direct {p0, v5, v3, v2, p1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_6
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x79

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto :goto_6
.end method

.method private o(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    mul-int/lit8 v1, v1, 0x3c

    sput v1, Lcn/jpush/android/service/PushService;->h:I

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/service/PushService;->h:I

    invoke-static {p0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez v1, :cond_5

    const/4 v1, 0x0

    sput-boolean v1, Lcn/jpush/android/service/PushService;->m:Z

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-nez v1, :cond_6

    const/4 v2, 0x0

    sput-boolean v2, Lcn/jpush/android/service/PushService;->n:Z

    :goto_1
    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    if-nez v0, :cond_7

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcn/jpush/android/service/PushService;->m:Z

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcn/jpush/android/service/PushService;->n:Z

    goto :goto_1

    :cond_7
    if-ne v0, v6, :cond_8

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_2

    :cond_8
    if-ne v0, v7, :cond_4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->f(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->T:Z

    return v0
.end method

.method private p()V
    .locals 4

    const/16 v3, 0x3e9

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/jpush/android/service/PushService;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    sget v1, Lcn/jpush/android/service/PushService;->R:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private q()[B
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/jpush/android/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x63

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x81

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v3, 0x80

    new-array v3, v3, [B

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2, v6}, Lcn/jpush/android/c/u;->a([BLjava/lang/String;I)[B

    const/16 v2, 0x22

    invoke-static {v3, v0, v2}, Lcn/jpush/android/c/u;->d([BII)[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcn/jpush/android/service/PushService;->o:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x26

    invoke-static {v3, v0, v2}, Lcn/jpush/android/c/u;->d([BII)[B

    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-static {v3, v0, v2}, Lcn/jpush/android/c/u;->a([BLjava/lang/String;I)[B

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x58

    aget-object v0, v0, v2

    const/16 v2, 0x5c

    invoke-static {v3, v0, v2}, Lcn/jpush/android/c/u;->a([BLjava/lang/String;I)[B

    sget-boolean v0, Lcn/jpush/android/service/PushService;->c:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/16 v0, 0x66

    invoke-static {v3, v1, v0}, Lcn/jpush/android/c/u;->d([BII)[B

    return-object v3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x50t
    .end array-data
.end method

.method private declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x4c

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->o:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private s()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x1e

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x84

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/c/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x83

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    array-length v1, v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcn/jpush/android/c/a;->a(B)I

    move-result v2

    move v1, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v2, v1, :cond_4

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->s:[B

    add-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->i(I)V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->k(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->d()V

    goto :goto_0
.end method

.method private declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-static {v0}, Lcn/jpush/android/service/PushProtocol;->Stop(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 8

    const/4 v7, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x55

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v7, :cond_2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x1

    aget-object v3, v1, v0

    const/4 v0, 0x2

    aget-object v4, v1, v0

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushService;->a(IJLjava/lang/String;Ljava/lang/String;I)I

    invoke-direct {p0, v5}, Lcn/jpush/android/service/PushService;->h(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->u:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private w()V
    .locals 3

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->join()V

    new-instance v0, Lcn/jpush/android/service/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x49

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v1}, Lcn/jpush/android/service/j;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-wide/16 v0, 0x258

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-boolean v0, v0, Lcn/jpush/android/service/j;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    new-instance v0, Lcn/jpush/android/service/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Lcn/jpush/android/service/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->g()V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/a/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x47

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/jpush/android/service/PushService;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget v1, Lcn/jpush/android/service/PushService;->h:I

    sget-boolean v0, Lcn/jpush/android/service/PushService;->B:Z

    sput-boolean v0, Lcn/jpush/android/service/PushService;->B:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/jpush/android/service/AlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x48

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v5, v1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v0, v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 11

    const/4 v9, 0x2

    const/16 v8, 0x50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->Y:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v4, v0, [B

    sget-object v0, Lcn/jpush/android/service/PushService;->U:Ljava/util/List;

    sget v2, Lcn/jpush/android/service/PushService;->z:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x6d

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x6b

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    sput-object v2, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sput-object v0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    sget-object v0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->q()[B

    move-result-object v5

    array-length v0, v5

    const/16 v2, 0x100

    if-le v0, v2, :cond_d

    const/16 v0, 0x100

    move v2, v0

    :goto_2
    sget v0, Lcn/jpush/android/service/PushService;->H:I

    if-ne v0, v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x6a

    aget-object v6, v6, v7

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcn/jpush/android/service/PushService;->H:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v0, Ljava/net/DatagramPacket;

    sget v6, Lcn/jpush/android/service/PushService;->H:I

    invoke-direct {v0, v5, v2, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :goto_3
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, v4

    invoke-direct {v0, v4, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x6e

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    const/4 v2, 0x0

    sput-object v2, Lcn/jpush/android/service/PushService;->D:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x70

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x6f

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, v0

    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_5
    :try_start_5
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget v1, Lcn/jpush/android/service/PushService;->H:I

    if-eq v1, v8, :cond_c

    const/16 v1, 0x50

    sput v1, Lcn/jpush/android/service/PushService;->H:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->c()V

    sget v1, Lcn/jpush/android/service/PushService;->z:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    sput v1, Lcn/jpush/android/service/PushService;->z:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x75

    aget-object v2, v2, v3

    sget v3, Lcn/jpush/android/service/PushService;->z:I

    invoke-static {v1, v2, v3}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x6c

    aget-object v6, v6, v7

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcn/jpush/android/service/PushService;->H:I

    add-int/lit16 v6, v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v0, Ljava/net/DatagramPacket;

    sget v6, Lcn/jpush/android/service/PushService;->H:I

    add-int/lit16 v6, v6, 0x2710

    invoke-direct {v0, v5, v2, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_5
    throw v0

    :cond_6
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    sput-object v2, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    :cond_7
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v9, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->k:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sput-object v4, Lcn/jpush/android/service/PushService;->k:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x74

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x73

    aget-object v6, v6, v7

    invoke-static {v5, v6, v4}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcn/jpush/android/service/PushService;->l:I

    if-eq v3, v2, :cond_9

    sput v2, Lcn/jpush/android/service/PushService;->l:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x71

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x72

    aget-object v3, v3, v4

    sget v4, Lcn/jpush/android/service/PushService;->l:I

    invoke-static {v2, v3, v4}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcn/jpush/android/c/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcn/jpush/android/c/w;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x76

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/jpush/android/service/PushService;->Y:J

    goto/16 :goto_4

    :cond_b
    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x77

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcn/jpush/android/service/PushService;->C:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/jpush/android/service/PushService;->E:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x2328

    :try_start_8
    sput v1, Lcn/jpush/android/service/PushService;->H:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :cond_d
    move v2, v0

    goto/16 :goto_2
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcn/jpush/android/service/PushService;->a(ZZ)V

    return-void
.end method

.method protected final e()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(ZZ)V

    return-void
.end method

.method protected final e(I)V
    .locals 13

    const/16 v8, 0xf

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/16 v7, 0x11

    const/4 v1, 0x1

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v0}, Lcn/jpush/android/c/a;->a([B)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x12

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_18

    :cond_2
    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    const/16 v4, 0xa

    invoke-static {v3, v4, v1}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v10

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->s:[B

    const/16 v4, 0xb

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v11

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x16

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x1f

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v0, v8, v12}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v0

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v4, v7, v0}, Lcn/jpush/android/c/u;->c([BII)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x11

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v4, v0, v12}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v6

    add-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v4, v0, v6}, Lcn/jpush/android/c/u;->c([BII)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v6

    iget-object v6, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v6, v0, v1}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0x26

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    add-int/lit8 v0, v0, 0x1

    iget-object v7, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v7, v0, v12}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v7

    add-int/lit8 v0, v0, 0x2

    if-ne v6, v1, :cond_4

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v1, v0, v7}, Lcn/jpush/android/c/u;->a([BII)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    if-nez v6, :cond_5

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v1, v0, v7}, Lcn/jpush/android/c/u;->c([BII)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x15

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v0, v8, v12}, Lcn/jpush/android/c/u;->b([BII)I

    move-result v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->s:[B

    invoke-static {v1, v7, v0}, Lcn/jpush/android/c/u;->c([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-le v5, v6, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const-string v0, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_2

    :pswitch_1
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    const/4 v1, 0x0

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    int-to-byte v4, v10

    int-to-long v5, v11

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(IIJBJ)I

    :cond_b
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v9, v8}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/a/a;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_3
    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, v0, Lcn/jpush/android/a/a;->c:Ljava/lang/String;

    const/16 v1, 0x406

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_3

    :cond_d
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-nez v0, :cond_e

    invoke-direct {p0, v10, v11}, Lcn/jpush/android/service/PushService;->a(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    :goto_4
    new-instance v0, Lcn/jpush/android/c/ad;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v9, v8}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/a/a;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_5
    invoke-virtual {v0}, Lcn/jpush/android/c/ad;->a()V

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    const/4 v1, 0x0

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    int-to-byte v4, v10

    int-to-long v5, v11

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(IIJBJ)I

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v10, v11}, Lcn/jpush/android/service/PushService;->a(II)V

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto :goto_4

    :cond_10
    invoke-virtual {v1}, Lcn/jpush/android/a/a;->h()Lcn/jpush/android/a/e;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->aa:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto :goto_5

    :cond_11
    sget-object v3, Lcn/jpush/android/service/PushService;->aa:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_12

    sget-object v3, Lcn/jpush/android/service/PushService;->aa:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_12
    sget-object v3, Lcn/jpush/android/service/PushService;->aa:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/a;)V

    goto :goto_5

    :cond_13
    iget-boolean v2, v1, Lcn/jpush/android/a/a;->e:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/jpush/android/a/a;->g:Z

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/jpush/android/service/PushService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    iput-object v9, v1, Lcn/jpush/android/a/a;->l:Ljava/lang/String;

    iput-object v8, v1, Lcn/jpush/android/a/a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Lcn/jpush/android/a/a;->f()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    goto/16 :goto_5

    :cond_15
    invoke-static {v1}, Lcn/jpush/android/a/a;->a(Lcn/jpush/android/a/a;)Lcn/jpush/android/a/d;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/jpush/android/service/g;

    invoke-direct {v3, p0, v1}, Lcn/jpush/android/service/g;-><init>(Lcn/jpush/android/service/PushService;Lcn/jpush/android/a/d;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :cond_16
    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_5

    :cond_17
    invoke-static {}, Lcn/jpush/android/c/r;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {p0, v7}, Lcn/jpush/android/service/PushService;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->g(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v7}, Lcn/jpush/android/service/PushService;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v7}, Lcn/jpush/android/service/PushService;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v7, v2}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v7}, Lcn/jpush/android/service/PushService;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    if-ne v0, v7, :cond_1e

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->t()V

    goto/16 :goto_0

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected final f()V
    .locals 14

    const/16 v13, 0xa7

    const/16 v12, 0x29

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iput v7, p0, Lcn/jpush/android/service/PushService;->W:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x99

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x9f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, ","

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v3, Lcn/jpush/android/service/PushService;->o:J

    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-static {v2, v3, v4, v1, v0}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9c

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x9d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    const/4 v0, 0x3

    :try_start_0
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v1, Lcn/jpush/android/service/PushService;->o:J

    aget-object v3, v6, v11

    aget-object v4, v6, v10

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushService;->a(IJLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v5, v7

    goto :goto_1

    :cond_3
    aget-object v1, v6, v10

    sget-object v2, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xa5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/c/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x93

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v10, :cond_7

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    aget-object v4, v1, v11

    aget-object v5, v1, v10

    invoke-static {v0, v2, v3, v4, v5}, Lcn/jpush/android/service/PushProtocol;->EnChannel(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x96

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v1, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x97

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x94

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v10, :cond_a

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    aget-object v4, v1, v11

    aget-object v5, v1, v10

    invoke-static {v0, v2, v3, v4, v5}, Lcn/jpush/android/service/PushProtocol;->UnChnelId(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v1, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa3

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x92

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v10, :cond_d

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    aget-object v4, v1, v11

    aget-object v5, v1, v10

    invoke-static {v0, v2, v3, v4, v5}, Lcn/jpush/android/service/PushProtocol;->PushTime(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x8f

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v1, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x90

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x98

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v10, :cond_10

    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    const/4 v1, 0x0

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    int-to-byte v4, v8

    int-to-long v5, v9

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(IIJBJ)I

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v8, v9}, Lcn/jpush/android/service/PushService;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_f
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x95

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->v()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v11

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_12

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x9e

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa1

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/service/ServiceInterface;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    const/4 v4, 0x4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I

    :cond_12
    :goto_3
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()V

    :cond_13
    sget-boolean v0, Lcn/jpush/android/service/PushService;->A:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->g(Landroid/content/Context;)V

    :cond_14
    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    sget v0, Lcn/jpush/android/service/PushService;->I:I

    if-gtz v0, :cond_16

    sget v0, Lcn/jpush/android/service/PushService;->I:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/service/PushService;->I:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x91

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/service/PushService;->I:I

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_16
    return-void

    :cond_17
    iget v1, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v2, Lcn/jpush/android/service/PushService;->o:J

    const/4 v4, 0x5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method protected final f(I)V
    .locals 7

    const/16 v6, 0x3ed

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x4d

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3df

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcn/jpush/android/c/ab;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/c/ab;->b:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez v1, :cond_5

    :cond_2
    const-wide/high16 v2, 0x4000000000000000L

    iget v0, p0, Lcn/jpush/android/service/PushService;->W:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget v2, p0, Lcn/jpush/android/service/PushService;->W:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jpush/android/service/PushService;->W:I

    sget v2, Lcn/jpush/android/service/PushService;->h:I

    mul-int/lit16 v2, v2, 0x1f4

    if-le v0, v2, :cond_3

    sget v0, Lcn/jpush/android/service/PushService;->h:I

    mul-int/lit16 v0, v0, 0x1f4

    :cond_3
    iget v2, p0, Lcn/jpush/android/service/PushService;->W:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->V:I

    iget v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->Z:I

    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/service/PushService;->a:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->q(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->O:Z

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->O:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    sput-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->r()V

    :cond_3
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v4

    sget-object v2, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcn/jpush/android/service/PushService;->L:Z

    iput-boolean v3, p0, Lcn/jpush/android/service/PushService;->M:Z

    sget-object v1, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcn/jpush/android/a/n;->b(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x42

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x43

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jpush/android/a/n;->b(Landroid/content/Context;I)Z

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcn/jpush/android/c/r;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->L:Z

    if-eqz v0, :cond_b

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->N:Z

    :cond_6
    :goto_3
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->N:Z

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_8
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->M:Z

    if-nez v0, :cond_6

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->N:Z

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->x()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->r(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const/4 v8, 0x3

    const/16 v7, 0xb2

    const/16 v6, 0xab

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xaa

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xb9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->O:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return v9

    :cond_1
    sget-boolean v0, Lcn/jpush/android/service/PushService;->Q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xad

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xa9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_3

    sput-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->K:Lcn/jpush/android/service/j;

    invoke-virtual {v0}, Lcn/jpush/android/service/j;->isAlive()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xc3

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xc2

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xc0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_6

    if-nez v3, :cond_26

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_3
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x89

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xb6

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x8c

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x85

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {p0, p0, v0, v3, v4}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/b/d;->f()V

    :cond_7
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v9

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-static {v0, v3, v4}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v3, Lcn/jpush/android/service/PushService;->Q:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()V

    :cond_9
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xba

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->ae:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v0, v0, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb5

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa9

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xbe

    aget-object v4, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto/16 :goto_2

    :cond_d
    :try_start_1
    iget v4, p0, Lcn/jpush/android/service/PushService;->r:I

    if-nez v4, :cond_e

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    invoke-direct {p0, v0, v3}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto/16 :goto_2

    :cond_e
    :try_start_2
    iget v4, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v5, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v4, v5, v6, v0, v3}, Lcn/jpush/android/service/PushProtocol;->UnChnelId(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_f

    invoke-direct {p0, v0, v3}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto/16 :goto_2

    :cond_f
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xc1

    aget-object v3, v3, v5

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    throw v0

    :cond_10
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    sget-object v0, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xaf

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9f

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xb3

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->c()V

    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    if-nez v3, :cond_12

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcn/jpush/android/service/PushService;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v4, Lcn/jpush/android/service/PushService;->o:J

    invoke-static {v3, v4, v5, v8, v0}, Lcn/jpush/android/service/PushProtocol;->RepPush(IJBLjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_13

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcn/jpush/android/service/PushService;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xa4

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->a()V

    goto/16 :goto_2

    :cond_14
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_2

    :cond_15
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xbb

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xb0

    aget-object v0, v0, v3

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_2

    :cond_16
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xb4

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4b

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4a

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xb7

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v0, :cond_17

    if-eqz v3, :cond_5

    :cond_17
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_18

    :try_start_4
    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x4b

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    if-eqz v3, :cond_19

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x4a

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-boolean v3, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v3, :cond_1a

    invoke-direct {p0, v0, v4}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb1

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :cond_1b
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa9

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb1

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_2

    :cond_1d
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xae

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1e

    const-string v0, "0"

    :goto_5
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v5, v5, v6

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcn/jpush/android/c/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v0, v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xac

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/c/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    const-string v0, "1"

    goto :goto_5

    :cond_1f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xab

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcn/jpush/android/c/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xb2

    aget-object v0, v0, v5

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xbc

    aget-object v5, v5, v6

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0xbf

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_20
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0xab

    aget-object v6, v6, v7

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0xab

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb2

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3}, Lcn/jpush/android/c/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    if-eqz v3, :cond_21

    sget-wide v3, Lcn/jpush/android/service/PushService;->o:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    :cond_21
    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb8

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x66

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto/16 :goto_2

    :catch_2
    move-exception v3

    invoke-static {}, Lcn/jpush/android/c/r;->i()V

    goto :goto_6

    :cond_22
    iget v3, p0, Lcn/jpush/android/service/PushService;->r:I

    sget-wide v4, Lcn/jpush/android/service/PushService;->o:J

    sget-object v6, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v0}, Lcn/jpush/android/service/PushProtocol;->PushTime(IJLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_23

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->t:Ljava/util/Queue;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb8

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcn/jpush/android/service/PushService;->J:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x66

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto/16 :goto_2

    :cond_23
    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xc4

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/c/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb1

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    goto/16 :goto_2

    :cond_25
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xbd

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    goto/16 :goto_2

    :cond_26
    invoke-direct {p0, v3}, Lcn/jpush/android/service/PushService;->g(I)V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_27
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1
.end method
