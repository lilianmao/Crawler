.class public final Lcn/jpush/android/ui/a;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/view/View$OnTouchListener;

.field private final c:Landroid/content/Context;

.field private d:Landroid/webkit/WebView;

.field private e:Lcn/jpush/android/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v4, "#\u0013N3|=\u0010\u0015"

    const/4 v0, -0x1

    move-object v6, v5

    move-object v7, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v8, v4

    if-gt v8, v2, :cond_2

    move v9, v1

    :cond_0
    move-object v10, v4

    move v11, v9

    move v14, v8

    move-object v8, v4

    move v4, v14

    :goto_1
    aget-char v13, v8, v9

    rem-int/lit8 v12, v11, 0x5

    packed-switch v12, :pswitch_data_0

    const/16 v12, 0x29

    :goto_2
    xor-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v8, v9

    add-int/lit8 v9, v11, 0x1

    if-nez v4, :cond_1

    move-object v8, v10

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_1
    move v8, v4

    move-object v4, v10

    :goto_3
    if-gt v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v6, v5

    const-string v0, "\u001a(iz\u0011"

    move-object v4, v0

    move v5, v2

    move-object v6, v7

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v6, v5

    const-string v0, "\u0005,Z$A\u0018\u0019M"

    move-object v4, v0

    move v5, v3

    move-object v6, v7

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v6, v5

    const/4 v4, 0x3

    const-string v0, "%\u000cZ$A\u0010\u001fC8Z*R_9N"

    move v5, v4

    move-object v6, v7

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v6, v5

    sput-object v7, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    return-void

    :pswitch_3
    const/16 v12, 0x4f

    goto :goto_2

    :pswitch_4
    const/16 v12, 0x7c

    goto :goto_2

    :pswitch_5
    const/16 v12, 0x2f

    goto :goto_2

    :pswitch_6
    const/16 v12, 0x57

    goto :goto_2

    :cond_2
    move v9, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V
    .locals 7

    const/4 v6, 0x2

    const/high16 v5, 0x40a00000

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/jpush/android/ui/b;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/b;-><init>(Lcn/jpush/android/ui/a;)V

    iput-object v0, p0, Lcn/jpush/android/ui/a;->b:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcn/jpush/android/ui/c;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/c;-><init>(Lcn/jpush/android/ui/a;)V

    iput-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    iput-object p1, p0, Lcn/jpush/android/ui/a;->c:Landroid/content/Context;

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v5}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v2, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/l;

    invoke-direct {v2, p1, p2}, Lcn/jpush/android/ui/l;-><init>(Landroid/content/Context;Lcn/jpush/android/a/d;)V

    sget-object v3, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/d;

    invoke-direct {v2, v0}, Lcn/jpush/android/ui/d;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/f;

    invoke-direct {v2, p2}, Lcn/jpush/android/ui/f;-><init>(Lcn/jpush/android/a/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/ui/a;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v5}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/a;)Lcn/jpush/android/ui/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    return-object v0
.end method

.method static synthetic b(Lcn/jpush/android/ui/a;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    invoke-virtual {v0, v3}, Lcn/jpush/android/ui/c;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    invoke-virtual {v0, v2}, Lcn/jpush/android/ui/c;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Lcn/jpush/android/ui/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic c(Lcn/jpush/android/ui/a;)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/jpush/android/ui/a;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x42200000

    iget-object v0, p0, Lcn/jpush/android/ui/a;->c:Landroid/content/Context;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v4}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v4}, Lcn/jpush/android/c/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Lcn/jpush/android/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/c;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/c/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
