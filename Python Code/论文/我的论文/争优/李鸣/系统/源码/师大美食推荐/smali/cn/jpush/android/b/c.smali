.class final Lcn/jpush/android/b/c;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/b/b;


# direct methods
.method constructor <init>(Lcn/jpush/android/b/b;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/b/c;->a:Lcn/jpush/android/b/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/b/c;->a:Lcn/jpush/android/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/b/b;->a(Lcn/jpush/android/b/b;Z)Z

    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/b/c;->a:Lcn/jpush/android/b/b;

    invoke-static {v0, p1}, Lcn/jpush/android/b/b;->a(Lcn/jpush/android/b/b;I)I

    return-void
.end method
