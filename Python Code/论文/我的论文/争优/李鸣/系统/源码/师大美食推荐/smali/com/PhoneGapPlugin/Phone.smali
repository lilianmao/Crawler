.class public Lcom/PhoneGapPlugin/Phone;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Phone.java"


# static fields
.field private static final PHONE_ABORT:I = 0x1

.field private static final PHONE_CALL:I


# instance fields
.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field delayTime:J

.field private phonenumber:Ljava/lang/String;

.field private start_time:Ljava/util/Date;

.field timeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    .line 86
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->timeOut:J

    return-void
.end method

.method private abort(Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method private call(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 3

    .prologue
    .line 41
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/PhoneGapPlugin/Phone;->start_time:Ljava/util/Date;

    .line 47
    iget-object v1, p0, Lcom/PhoneGapPlugin/Phone;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e0d\u662f\u6709\u6548\u7684\u7535\u8bdd\u53f7\u7801\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "\u7535\u8bdd\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a."

    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method GetLastCallDuration()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0xc8

    .line 88
    iget-object v0, p0, Lcom/PhoneGapPlugin/Phone;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 89
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v11

    const-string v3, "date"

    aput-object v3, v2, v12

    const-string v3, "duration"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "number=?and type=?"

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/PhoneGapPlugin/Phone;->phonenumber:Ljava/lang/String;

    aput-object v5, v4, v11

    const-string v5, "2"

    aput-object v5, v4, v12

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    invoke-virtual {v8, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 98
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 99
    const-string v1, "duration"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lcom/PhoneGapPlugin/Phone;->start_time:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 101
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 102
    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 118
    :goto_0
    return-wide v0

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    iget-wide v2, p0, Lcom/PhoneGapPlugin/Phone;->timeOut:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move-wide v0, v6

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    iget-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    .line 110
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/Phone;->GetLastCallDuration()J

    move-result-wide v0

    goto :goto_0

    .line 113
    :cond_2
    iget-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    iget-wide v2, p0, Lcom/PhoneGapPlugin/Phone;->timeOut:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    move-wide v0, v6

    .line 114
    goto :goto_0

    .line 116
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 117
    iget-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/PhoneGapPlugin/Phone;->delayTime:J

    .line 118
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/Phone;->GetLastCallDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    :try_start_0
    iput-object p3, p0, Lcom/PhoneGapPlugin/Phone;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 24
    const-string v2, "call"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/PhoneGapPlugin/Phone;->phonenumber:Ljava/lang/String;

    .line 26
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/PhoneGapPlugin/Phone;->call(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 38
    :goto_0
    return v0

    .line 29
    :cond_0
    const-string v2, "abort"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-direct {p0, p3}, Lcom/PhoneGapPlugin/Phone;->abort(Lorg/apache/cordova/api/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    move v0, v1

    .line 38
    goto :goto_0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 60
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/PhoneGapPlugin/Phone;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    const-string v1, "\u672a\u77e5\u72b6\u6001"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-nez p2, :cond_2

    .line 67
    if-nez p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/PhoneGapPlugin/Phone;->GetLastCallDuration()J

    move-result-wide v1

    .line 69
    new-instance v3, Lcom/PhoneGapPlugin/PhoneResult;

    invoke-direct {v3}, Lcom/PhoneGapPlugin/PhoneResult;-><init>()V

    .line 70
    iget-object v4, p0, Lcom/PhoneGapPlugin/Phone;->phonenumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/PhoneGapPlugin/PhoneResult;->setNumber(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/PhoneGapPlugin/Phone;->start_time:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/PhoneGapPlugin/PhoneResult;->setStartTime(Ljava/util/Date;)V

    .line 72
    invoke-virtual {v3, v0}, Lcom/PhoneGapPlugin/PhoneResult;->setEndTime(Ljava/util/Date;)V

    .line 73
    invoke-virtual {v3, v1, v2}, Lcom/PhoneGapPlugin/PhoneResult;->setDuration(J)V

    .line 74
    iget-object v0, p0, Lcom/PhoneGapPlugin/Phone;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v3}, Lcom/PhoneGapPlugin/PhoneResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/PhoneGapPlugin/Phone;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/PhoneGapPlugin/Phone;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    const-string v1, "\u5176\u4ed6\u9519\u8bef\uff01"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
