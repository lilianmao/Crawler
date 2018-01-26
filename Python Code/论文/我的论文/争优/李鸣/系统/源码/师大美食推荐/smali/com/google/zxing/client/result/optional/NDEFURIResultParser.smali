.class final Lcom/google/zxing/client/result/optional/NDEFURIResultParser;
.super Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;
.source "NDEFURIResultParser.java"


# static fields
.field private static final URI_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://www."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tel:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mailto:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ftp://anonymous:anonymous@"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ftp://ftp."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ftps://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smb://"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nfs://"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dav://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "news:"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "telnet://"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "imap:"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rtsp://"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "urn:"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pop:"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sip:"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sips:"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "tftp:"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "btspp://"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "btl2cap://"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "btgoep://"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "tcpobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "irdaobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "file://"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "urn:epc:id:"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "urn:epc:tag:"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "urn:epc:pat:"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "urn:epc:raw:"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "urn:epc:"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "urn:nfc:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;-><init>()V

    return-void
.end method

.method static decodeURIPayload([B)Ljava/lang/String;
    .locals 6
    .param p0, "payload"    # [B

    .prologue
    .line 86
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    .line 87
    .local v0, "identifierCode":I
    const/4 v1, 0x0

    .line 88
    .local v1, "prefix":Ljava/lang/String;
    sget-object v3, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 89
    sget-object v3, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 91
    :cond_0
    const/4 v3, 0x1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    const-string v5, "UTF8"

    invoke-static {p0, v3, v4, v5}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->bytesToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "restOfURI":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v2    # "restOfURI":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "restOfURI":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 6
    .param p0, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v0

    .line 71
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object v2

    .line 75
    .local v2, "ndefRecord":Lcom/google/zxing/client/result/optional/NDEFRecord;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v2}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "U"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->decodeURIPayload([B)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "fullURI":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v4, v1, v3}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0
.end method
