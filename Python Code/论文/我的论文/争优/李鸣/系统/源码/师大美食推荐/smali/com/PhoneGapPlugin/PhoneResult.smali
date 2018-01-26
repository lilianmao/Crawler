.class public Lcom/PhoneGapPlugin/PhoneResult;
.super Ljava/lang/Object;
.source "PhoneResult.java"


# instance fields
.field private duration:J

.field private endTime:Ljava/util/Date;

.field private number:Ljava/lang/String;

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->number:Ljava/lang/String;

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->duration:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->duration:J

    return-wide v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/PhoneGapPlugin/PhoneResult;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/PhoneGapPlugin/PhoneResult;->duration:J

    .line 42
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/PhoneGapPlugin/PhoneResult;->endTime:Ljava/util/Date;

    .line 36
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/PhoneGapPlugin/PhoneResult;->number:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/PhoneGapPlugin/PhoneResult;->startTime:Ljava/util/Date;

    .line 30
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss:S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/PhoneGapPlugin/PhoneResult;->number:Ljava/lang/String;

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/PhoneGapPlugin/PhoneResult;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",endTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/PhoneGapPlugin/PhoneResult;->endTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/PhoneGapPlugin/PhoneResult;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
