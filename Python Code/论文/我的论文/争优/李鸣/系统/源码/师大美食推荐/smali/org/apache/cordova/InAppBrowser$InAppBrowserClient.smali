.class public Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppBrowserClient"
.end annotation


# instance fields
.field edittext:Landroid/widget/EditText;

.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;

.field webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/InAppBrowser;Lorg/apache/cordova/CordovaWebView;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p3, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 590
    iput-object p2, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 591
    iput-object p3, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    .line 592
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 681
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 682
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "loadstop"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    const/4 v3, 0x1

    # invokes: Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    invoke-static {v2, v1, v3}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 602
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 603
    const-string v4, ""

    .line 604
    .local v4, "newloc":Ljava/lang/String;
    const-string v9, "http:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "https:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "file:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 605
    :cond_0
    move-object v4, p2

    .line 662
    :goto_0
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 663
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 668
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v9, "type"

    const-string v10, "loadstart"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v9, "url"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    const/4 v10, 0x1

    # invokes: Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    invoke-static {v9, v5, v10}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 675
    .end local v5    # "obj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 608
    :cond_2
    const-string v9, "tel:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 610
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 612
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    iget-object v9, v9, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 613
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "InAppBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error dialing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v9, "geo:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "mailto:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "market:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 620
    :cond_4
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 622
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    iget-object v9, v9, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 623
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 624
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "InAppBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const-string v9, "sms:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 630
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 634
    .local v0, "address":Ljava/lang/String;
    const/16 v9, 0x3f

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 635
    .local v6, "parmIndex":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_7

    .line 636
    const/4 v9, 0x4

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_6
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 651
    const-string v9, "address"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    iget-object v9, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    iget-object v9, v9, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 654
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "parmIndex":I
    :catch_2
    move-exception v1

    .line 655
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "InAppBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error sending sms "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "parmIndex":I
    :cond_7
    const/4 v9, 0x4

    :try_start_4
    invoke-virtual {p2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 643
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, "query":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 645
    const-string v9, "body="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 646
    const-string v9, "sms_body"

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 659
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "parmIndex":I
    .end local v7    # "query":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 672
    :catch_3
    move-exception v2

    .line 673
    .local v2, "ex":Lorg/json/JSONException;
    const-string v9, "InAppBrowser"

    const-string v10, "Should never happen"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 695
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 696
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "loaderror"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v2, "url"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v2, "code"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 699
    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    # invokes: Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    invoke-static {v2, v1, v3, v4}, Lorg/apache/cordova/InAppBrowser;->access$1100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
