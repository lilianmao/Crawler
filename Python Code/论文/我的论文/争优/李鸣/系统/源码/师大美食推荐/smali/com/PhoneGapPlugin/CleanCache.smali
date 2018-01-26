.class public Lcom/PhoneGapPlugin/CleanCache;
.super Ljava/lang/Object;
.source "CleanCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanApplicationData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/PhoneGapPlugin/CleanCache;->cleanInternalCache(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Lcom/PhoneGapPlugin/CleanCache;->cleanExternalCache(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcom/PhoneGapPlugin/CleanCache;->cleanDatabases(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/PhoneGapPlugin/CleanCache;->cleanSharedPreference(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/PhoneGapPlugin/CleanCache;->cleanFiles(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/PhoneGapPlugin/FileUtils;->deleteFolder(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static cleanCustomCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 45
    return-void
.end method

.method public static cleanDatabaseByName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 27
    const-string v0, "cl"

    const-string v1, "cleanDatabaseByName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static cleanDatabases(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 17
    const-string v0, "cl"

    const-string v1, "cleanDatabases"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static cleanExternalCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 39
    const-string v0, "cl"

    const-string v1, "cleanExternalCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static cleanFiles(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 32
    const-string v0, "cl"

    const-string v1, "cleanFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static cleanInternalCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 11
    const-string v0, "cl"

    const-string v1, "cleanInternalCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method

.method public static cleanSharedPreference(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/PhoneGapPlugin/CleanCache;->deleteFilesByDirectory(Ljava/io/File;)V

    .line 22
    const-string v0, "cl"

    const-string v1, "cleanSharedPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method private static deleteFilesByDirectory(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/PhoneGapPlugin/FileUtils;->deleteFolder(Ljava/lang/String;)V

    .line 63
    return-void
.end method
