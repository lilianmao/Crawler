.class public final Lcn/jpush/android/a/f;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final E:[Ljava/lang/String;


# instance fields
.field private A:Landroid/webkit/WebView;

.field private B:Lcn/jpush/android/a/d;

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Bitmap;

.field a:[[I

.field b:Landroid/os/Handler;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ScrollView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/content/Context;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u4e46\u8f2e\u5b90\u8894"

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

    const/16 v9, 0x69

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

    const-string v1, ")6\u007f\u000e\u0000 4"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, ">\'x#6|"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u8f22\u4ea5\u4ed2\u7e9c"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u70a0\u9553\u8f76\u4ea7"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, ">\'x#6}"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ")6\u007f\u000e\u0000.<w"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u539b\u6ddb"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u0018\u0007_|Q"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "!<x5<??#"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0007\u0003l\"\u0001\u001a6{"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "m\u4ee9\u8bdd\u5257"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    return-void

    :pswitch_b
    const/16 v9, 0x4d

    goto/16 :goto_2

    :pswitch_c
    const/16 v9, 0x53

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0x19

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x51

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
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
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/f;->w:Landroid/graphics/Bitmap;

    iput v8, p0, Lcn/jpush/android/a/f;->x:I

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/jpush/android/a/f;->a:[[I

    new-instance v0, Lcn/jpush/android/a/g;

    invoke-direct {v0, p0}, Lcn/jpush/android/a/g;-><init>(Lcn/jpush/android/a/f;)V

    iput-object v0, p0, Lcn/jpush/android/a/f;->b:Landroid/os/Handler;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iput-object p1, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/a/f;->B:Lcn/jpush/android/a/d;

    iget-object v0, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/jpush/android/a/f;->y:I

    iget-object v0, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/jpush/android/a/f;->z:F

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/f;->w:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcn/jpush/android/a/f;->a:[[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/f;->x:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/jpush/android/a/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v10}, Lcn/jpush/android/a/f;->setOrientation(I)V

    invoke-virtual {p0, v9, v9, v9, v9}, Lcn/jpush/android/a/f;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x75

    const/16 v3, 0x75

    const/16 v4, 0x75

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcn/jpush/android/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x4b

    invoke-direct {v0, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0xa0

    const/16 v3, 0xc8

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x48

    const/16 v2, 0x48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->i:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_1
    iget-object v1, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/jpush/android/a/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->k:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->k:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    const/16 v2, 0xe5

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    const/high16 v2, 0x41700000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xf7

    const/16 v4, 0xf8

    const/16 v5, 0xf9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/a/f;->m:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/a/f;->m:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->m:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->m:Landroid/widget/TextView;

    const/high16 v6, 0x41400000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/a/f;->n:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/a/f;->n:Landroid/widget/TextView;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->n:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->n:Landroid/widget/TextView;

    const/high16 v6, 0x41400000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/a/f;->o:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/a/f;->o:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v9, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->o:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->o:Landroid/widget/TextView;

    const/high16 v6, 0x41400000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    const/16 v4, 0x64

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->h:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcn/jpush/android/a/f;->a(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    const/16 v2, 0xe5

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->l:Landroid/widget/TextView;

    const/high16 v2, 0x41700000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    const/16 v2, 0xf7

    const/16 v3, 0xf8

    const/16 v4, 0xf9

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    const/high16 v2, 0x41400000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x14

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x435c0000

    iget v2, p0, Lcn/jpush/android/a/f;->z:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43960000

    iget v3, p0, Lcn/jpush/android/a/f;->z:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->r:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_2
    iget-object v1, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcn/jpush/android/a/f;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/jpush/android/a/f;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0xa0

    const/16 v3, 0xc8

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcn/jpush/android/a/f;->y:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/a/f;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcn/jpush/android/a/f;->s:Landroid/widget/Button;

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic a(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, -0x2

    const/4 v6, 0x5

    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/a/f;->a:[[I

    iget v4, p0, Lcn/jpush/android/a/f;->x:I

    aget-object v1, v1, v4

    array-length v4, v1

    if-ne v4, v7, :cond_4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aget v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    aget v0, v1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/a/f;->v:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x41700000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7d0

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/a/f;->w:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/a/f;->w:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v0, v7, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/jpush/android/a/f;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static synthetic b(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->C:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/android/a/f;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcn/jpush/android/a/f;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->D:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/l;

    iget-object v3, p0, Lcn/jpush/android/a/f;->u:Landroid/content/Context;

    iget-object v4, p0, Lcn/jpush/android/a/f;->B:Lcn/jpush/android/a/d;

    invoke-direct {v2, v3, v4}, Lcn/jpush/android/ui/l;-><init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    sget-object v3, Lcn/jpush/android/a/f;->E:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/f;

    iget-object v3, p0, Lcn/jpush/android/a/f;->B:Lcn/jpush/android/a/d;

    invoke-direct {v2, v3}, Lcn/jpush/android/ui/f;-><init>(Lcn/jpush/android/a/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lcn/jpush/android/a/f;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/a/f;->A:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->t:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
