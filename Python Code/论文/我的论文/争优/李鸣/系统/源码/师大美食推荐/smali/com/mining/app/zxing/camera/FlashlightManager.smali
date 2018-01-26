.class final Lcom/mining/app/zxing/camera/FlashlightManager;
.super Ljava/lang/Object;
.source "FlashlightManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final iHardwareService:Ljava/lang/Object;

.field private static final setFlashEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/mining/app/zxing/camera/FlashlightManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/mining/app/zxing/camera/FlashlightManager;->getHardwareService()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mining/app/zxing/camera/FlashlightManager;->getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    const-string v1, "This device does supports control of a flashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    const-string v1, "This device does not support control of a flashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static disableFlashlight()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mining/app/zxing/camera/FlashlightManager;->setFlashlight(Z)V

    .line 66
    return-void
.end method

.method static enableFlashlight()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mining/app/zxing/camera/FlashlightManager;->setFlashlight(Z)V

    .line 62
    return-void
.end method

.method private static getHardwareService()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 69
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Lcom/mining/app/zxing/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v2, "getService"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/mining/app/zxing/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 79
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "hardware"

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/mining/app/zxing/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 84
    const-string v2, "android.os.IHardwareService$Stub"

    invoke-static {v2}, Lcom/mining/app/zxing/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    .line 89
    const-string v3, "asInterface"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/mining/app/zxing/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 94
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v0, v3}, Lcom/mining/app/zxing/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    const-string v1, "setFlashlightEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mining/app/zxing/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    sget-object v2, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    .line 136
    sget-object v2, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    :catch_2
    move-exception v1

    .line 139
    sget-object v2, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static maybeForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    sget-object v2, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while finding class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static varargs maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    sget-object v2, Lcom/mining/app/zxing/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while finding method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static setFlashlight(Z)V
    .locals 5

    .prologue
    .line 145
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/mining/app/zxing/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mining/app/zxing/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mining/app/zxing/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-void
.end method
