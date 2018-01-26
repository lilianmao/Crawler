.class public Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;
.super Ljava/lang/Object;
.source "ImageCompress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/PhoneGapPlugin/ImageCompress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressOptions"
.end annotation


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x320

.field public static final DEFAULT_WIDTH:I = 0x190


# instance fields
.field public destFile:Ljava/io/File;

.field public imgFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public maxHeight:I

.field public maxWidth:I

.field public quality:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x190

    iput v0, p0, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxWidth:I

    .line 99
    const/16 v0, 0x320

    iput v0, p0, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->maxHeight:I

    .line 103
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->imgFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 106
    const/16 v0, 0x1e

    iput v0, p0, Lcom/PhoneGapPlugin/ImageCompress$CompressOptions;->quality:I

    return-void
.end method
