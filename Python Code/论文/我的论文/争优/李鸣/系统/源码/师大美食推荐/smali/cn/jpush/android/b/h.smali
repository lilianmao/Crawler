.class final Lcn/jpush/android/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/b/g;


# direct methods
.method constructor <init>(Lcn/jpush/android/b/g;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/b/h;->a:Lcn/jpush/android/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/b/h;->a:Lcn/jpush/android/b/g;

    invoke-static {v0, p1}, Lcn/jpush/android/b/g;->a(Lcn/jpush/android/b/g;Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/b/h;->a:Lcn/jpush/android/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/b/g;->a(Lcn/jpush/android/b/g;Landroid/location/Location;)V

    iget-object v0, p0, Lcn/jpush/android/b/h;->a:Lcn/jpush/android/b/g;

    invoke-virtual {v0}, Lcn/jpush/android/b/g;->c()V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/b/h;->a:Lcn/jpush/android/b/g;

    invoke-virtual {v0}, Lcn/jpush/android/b/g;->b()V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
