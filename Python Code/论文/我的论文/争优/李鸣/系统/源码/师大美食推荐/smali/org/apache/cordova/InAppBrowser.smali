.class public Lorg/apache/cordova/InAppBrowser;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;,
        Lorg/apache/cordova/InAppBrowser$InAppChromeClient;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SYSTEM:Ljava/lang/String; = "_system"


# instance fields
.field private MAX_QUOTA:J

.field private buttonLabel:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private inAppWebView:Landroid/webkit/WebView;

.field private showLocationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 77
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 84
    const-string v0, "Done"

    iput-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/cordova/InAppBrowser;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/cordova/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/cordova/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/cordova/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$900(Lorg/apache/cordova/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method private closeDialog()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 261
    :cond_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 270
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 279
    :cond_0
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 288
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 296
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    const/4 v2, 0x0

    .line 206
    :cond_0
    return-object v2

    .line 191
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "key":Ljava/lang/String;
    const-string v5, "closebuttoncaption"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 202
    .local v4, "value":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 517
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    .line 518
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 526
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 527
    .local v0, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 528
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 529
    return-void
.end method

.method private updateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "newUrl":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    :cond_0
    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 96
    .local v12, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v9, ""

    .line 97
    .local v9, "result":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 100
    :try_start_0
    const-string v15, "open"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 101
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "url":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, "target":Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "null"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 104
    :cond_0
    const-string v13, "_self"

    .line 106
    :cond_1
    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/cordova/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 108
    .local v3, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v15, "InAppBrowser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "target = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/cordova/InAppBrowser;->updateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    const-string v15, "_self"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 114
    const-string v15, "InAppBrowser"

    const-string v16, "in self"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v15, "file://"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "javascript:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v14}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 118
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v15, v14}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    .end local v3    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v13    # "target":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_0
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v12, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 173
    .local v8, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v15, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 178
    .end local v8    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_1
    const/4 v15, 0x1

    return v15

    .line 121
    .restart local v3    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v13    # "target":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_3
    const-string v15, "tel:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-eqz v15, :cond_4

    .line 124
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.DIAL"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v15, "InAppBrowser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error dialing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 175
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v13    # "target":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 176
    .local v2, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v16, Lorg/apache/cordova/api/PluginResult;

    sget-object v17, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual/range {v15 .. v16}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1

    .line 133
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v13    # "target":Ljava/lang/String;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lorg/apache/cordova/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 137
    :cond_5
    const-string v15, "_system"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 138
    const-string v15, "InAppBrowser"

    const-string v16, "in system"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/cordova/InAppBrowser;->openExternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 143
    :cond_6
    const-string v15, "InAppBrowser"

    const-string v16, "in blank"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lorg/apache/cordova/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 147
    .end local v3    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v13    # "target":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_7
    const-string v15, "close"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 148
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    .line 150
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v15, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v8, v15}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 151
    .restart local v8    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v15, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 154
    .end local v8    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :cond_8
    const-string v15, "injectScriptCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 155
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "source":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .local v5, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "jsonRepr":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "jsonSourceString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(function(d){var c=d.createElement(\'script\');c.type=\'text/javascript\';c.innerText="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";d.getElementsByTagName(\'head\')[0].appendChild(c);})(document)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "scriptEnclosure":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "javascript:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v15, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v8, v15}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 167
    .restart local v8    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v15, v8}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 170
    .end local v5    # "jsonEsc":Lorg/json/JSONArray;
    .end local v6    # "jsonRepr":Ljava/lang/String;
    .end local v7    # "jsonSourceString":Ljava/lang/String;
    .end local v8    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    .end local v10    # "scriptEnclosure":Ljava/lang/String;
    .end local v11    # "source":Ljava/lang/String;
    :cond_9
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    const-string v3, ""
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 238
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "InAppBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppBrowser: Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 317
    if-eqz p2, :cond_0

    .line 318
    const-string v3, "location"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 319
    .local v1, "show":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 324
    .end local v1    # "show":Ljava/lang/Boolean;
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 327
    .local v2, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v0, Lorg/apache/cordova/InAppBrowser$1;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/cordova/InAppBrowser$1;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 507
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    const-string v3, ""

    return-object v3
.end method
