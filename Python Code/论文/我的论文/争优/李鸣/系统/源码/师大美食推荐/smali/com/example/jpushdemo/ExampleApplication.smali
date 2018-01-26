.class public Lcom/example/jpushdemo/ExampleApplication;
.super Landroid/app/Application;
.source "ExampleApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "JPush"

    const-string v1, "[ExampleApplication] onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 21
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method
