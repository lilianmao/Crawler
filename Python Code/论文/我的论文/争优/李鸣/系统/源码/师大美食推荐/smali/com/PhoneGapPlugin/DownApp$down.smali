.class public Lcom/PhoneGapPlugin/DownApp$down;
.super Ljava/lang/Thread;
.source "DownApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/PhoneGapPlugin/DownApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "down"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/PhoneGapPlugin/DownApp;


# direct methods
.method public constructor <init>(Lcom/PhoneGapPlugin/DownApp;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 139
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v0, v0, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v2, v2, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v4, v4, Lcom/PhoneGapPlugin/DownApp;->loadUrl:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/version.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard/Down"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/sdcard/Down/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v4, v4, Lcom/PhoneGapPlugin/DownApp;->in_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 150
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 153
    const v4, 0x19000

    new-array v4, v4, [B

    .line 155
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 156
    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    const/4 v6, 0x0

    # setter for: Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I
    invoke-static {v2, v6}, Lcom/PhoneGapPlugin/DownApp;->access$402(Lcom/PhoneGapPlugin/DownApp;I)I

    .line 157
    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    const/4 v6, 0x0

    # invokes: Lcom/PhoneGapPlugin/DownApp;->sendMsg(I)V
    invoke-static {v2, v6}, Lcom/PhoneGapPlugin/DownApp;->access$500(Lcom/PhoneGapPlugin/DownApp;I)V

    .line 158
    invoke-static {v1}, Lcom/PhoneGapPlugin/FileUtils;->getHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v7

    .line 160
    const/4 v2, 0x0

    .line 162
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v8, "gbk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v1

    .line 168
    :goto_0
    :try_start_2
    const-string v1, "utf-8"

    invoke-interface {v7, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 169
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 170
    :goto_1
    if-eq v1, v9, :cond_3

    .line 171
    packed-switch v1, :pswitch_data_0

    .line 179
    :cond_1
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    goto :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 213
    :goto_3
    return-void

    .line 173
    :pswitch_0
    :try_start_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v6, "sizeLong"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Lcom/PhoneGapPlugin/DownApp;->fileSize:I
    invoke-static {v1, v6}, Lcom/PhoneGapPlugin/DownApp;->access$602(Lcom/PhoneGapPlugin/DownApp;I)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 182
    :catch_2
    move-exception v1

    .line 183
    :try_start_5
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 189
    :cond_2
    :goto_4
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 190
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 200
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    const/4 v2, 0x2

    # invokes: Lcom/PhoneGapPlugin/DownApp;->sendMsg(I)V
    invoke-static {v1, v2}, Lcom/PhoneGapPlugin/DownApp;->access$500(Lcom/PhoneGapPlugin/DownApp;I)V

    .line 201
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 203
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 206
    :catch_3
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_3

    .line 181
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 184
    :catch_4
    move-exception v1

    .line 185
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    .line 208
    :catch_5
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 193
    :cond_4
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v5, v4, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 194
    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # += operator for: Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I
    invoke-static {v2, v1}, Lcom/PhoneGapPlugin/DownApp;->access$412(Lcom/PhoneGapPlugin/DownApp;I)I

    .line 195
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    iget-object v2, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->downLoadFileSize:I
    invoke-static {v2}, Lcom/PhoneGapPlugin/DownApp;->access$400(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget-object v6, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->fileSize:I
    invoke-static {v6}, Lcom/PhoneGapPlugin/DownApp;->access$600(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v6

    div-int/2addr v2, v6

    # setter for: Lcom/PhoneGapPlugin/DownApp;->len:I
    invoke-static {v1, v2}, Lcom/PhoneGapPlugin/DownApp;->access$102(Lcom/PhoneGapPlugin/DownApp;I)I

    .line 196
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    # getter for: Lcom/PhoneGapPlugin/DownApp;->len:I
    invoke-static {v1}, Lcom/PhoneGapPlugin/DownApp;->access$100(Lcom/PhoneGapPlugin/DownApp;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/PhoneGapPlugin/DownApp$down;->this$0:Lcom/PhoneGapPlugin/DownApp;

    const/4 v2, 0x1

    # invokes: Lcom/PhoneGapPlugin/DownApp;->sendMsg(I)V
    invoke-static {v1, v2}, Lcom/PhoneGapPlugin/DownApp;->access$500(Lcom/PhoneGapPlugin/DownApp;I)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    .line 210
    :catch_6
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
