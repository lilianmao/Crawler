.class public Lcom/exception/CrashApplication;
.super Landroid/app/Application;
.source "CrashApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    invoke-static {}, Lcom/exception/CrashHandler;->getInstance()Lcom/exception/CrashHandler;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/exception/CrashApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exception/CrashHandler;->init(Landroid/content/Context;)V

    .line 12
    return-void
.end method
