.class public Lcom/PhoneGapPlugin/Update;
.super Lorg/apache/cordova/api/Plugin;
.source "Update.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 21
    const-string v6, "http://img.quickapp.cn//22/1100013372/app_cache/qrcode//liming9309.apk"

    .line 22
    const-string v4, ""

    .line 23
    const-string v3, ""

    .line 24
    const-string v0, ""

    .line 25
    const-string v2, ""

    .line 26
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/PhoneGapPlugin/Update;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "version"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :goto_0
    aget-object v5, v0, v10

    aget-object v0, v0, v10

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 35
    const-string v0, "http://img.quickapp.cn//22/1100013372/app_cache/qrcode//version.xml"

    invoke-static {v0}, Lcom/PhoneGapPlugin/FileUtils;->getHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 39
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v9, "gbk"

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 51
    :goto_1
    :try_start_2
    const-string v0, "utf-8"

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    move-object v1, v3

    move v3, v0

    move-object v0, v2

    move-object v2, v4

    .line 53
    :goto_2
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 54
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 66
    :goto_3
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v0

    move v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v11

    goto :goto_2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v5, v1

    goto :goto_1

    .line 56
    :pswitch_0
    :try_start_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 59
    :cond_1
    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 61
    :cond_2
    const-string v4, "size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 74
    :goto_4
    const/16 v3, 0xa

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_5
    const-string v4, "url"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v4, "name"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "time"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 87
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 92
    :cond_4
    :goto_5
    return-object v1

    .line 69
    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    .line 70
    :goto_6
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_4

    .line 71
    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    .line 72
    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 83
    :catch_4
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_5

    .line 89
    :cond_5
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_5

    .line 71
    :catch_5
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_7

    :catch_6
    move-exception v3

    goto :goto_7

    .line 69
    :catch_7
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_6

    :catch_8
    move-exception v3

    goto :goto_6

    .line 54
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
