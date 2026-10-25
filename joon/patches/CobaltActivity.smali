.class public abstract Ldev/cobalt/coat/CobaltActivity;
.super Ldev/cobalt/coat/BaseCobaltActivity;
.source "CobaltActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/cobalt/coat/CobaltActivity$OnBackInvokedHelper;
    }
.end annotation


# static fields
.field private static final COBALT_USING_ANDROID_OVERLAY:Ljava/lang/String; = "cobalt-using-android-overlay"

.field private static final DEFAULT_HANG_APP_CRASH_TIMEOUT_SECONDS:I = 0x78

.field private static final META_DATA_ENABLE_FEATURES:Ljava/lang/String; = "cobalt.ENABLE_FEATURES"

.field private static final META_DATA_ENABLE_SPLASH_SCREEN:Ljava/lang/String; = "cobalt.ENABLE_SPLASH_SCREEN"

.field private static final MIN_RETRY_INTERVAL_MS:J = 0x3e8L

.field private static final RETRY_PARAM_KEY:Ljava/lang/String; = "netdialog_retry"

.field private static final YOUTUBE_URL:Ljava/lang/String; = "https://www.youtube.com/tv"

.field private static sIsMemoryPressureInitialized:Z

.field private static final sRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mA11yHelper:Ldev/cobalt/coat/CobaltA11yHelper;

.field private mBackInvokedCallback:Ljava/lang/Object;

.field private final mDisplayListener:Ldev/cobalt/util/DisplayUtil$Listener;

.field private mForceCreateNewVideoSurfaceView:Z

.field private mFreezeRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasHiddenSplashScreen:Z

.field private mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

.field private mIsCobaltUsingAndroidOverlay:Z

.field private mIsKeepScreenOnEnabled:Ljava/lang/Boolean;

.field private mIsNetworkRecoveryObserverRegistered:Z

.field private final mJavaScriptAndroidObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mJavaSwitches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRetryTimestampMs:J

.field private mLastSentIntent:Landroid/content/Intent;

.field private mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

.field private mPhysicalBackKeyPressed:Z

.field private mShellManager:Ldev/cobalt/shell/ShellManager;

.field private mStartDeepLink:Ljava/lang/String;

.field private static sNetTvDeepLinkReplayed:Z

.field private mStartupUrl:Ljava/lang/String;

.field private mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

.field private mWasDisplayOn:Z

.field private mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;


# direct methods
.method public static synthetic $r8$lambda$hODfnDcT2hc4_3ois2IJBf6YMXA(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->lambda$reloadUrl$2(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalBackKeyPressed(Ldev/cobalt/coat/CobaltActivity;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/cobalt/coat/CobaltActivity;->mPhysicalBackKeyPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShellManager(Ldev/cobalt/coat/CobaltActivity;)Ldev/cobalt/shell/ShellManager;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartupUrl(Ldev/cobalt/coat/CobaltActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSurfaceView(Ldev/cobalt/coat/CobaltActivity;)Ldev/cobalt/media/VideoSurfaceView;
    .locals 0

    iget-object p0, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFreezeRunnable(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartupUrl(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDisplayState(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->checkDisplayState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateNewSurfaceView(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->createNewSurfaceView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishInitialization(Ldev/cobalt/coat/CobaltActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->finishInitialization(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializationFailed(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->initializationFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeJavaBridge(Ldev/cobalt/coat/CobaltActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->initializeJavaBridge()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ldev/cobalt/coat/CobaltActivity;->sRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    sput-boolean v1, Ldev/cobalt/coat/CobaltActivity;->sIsMemoryPressureInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Ldev/cobalt/coat/BaseCobaltActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mJavaScriptAndroidObjectList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mJavaSwitches:Ljava/util/Map;

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mIsKeepScreenOnEnabled:Ljava/lang/Boolean;

    .line 112
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsNetworkRecoveryObserverRegistered:Z

    .line 119
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHasHiddenSplashScreen:Z

    .line 126
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldev/cobalt/coat/CobaltActivity;->mLastRetryTimestampMs:J

    .line 141
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mPhysicalBackKeyPressed:Z

    .line 142
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$1;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/CobaltActivity$1;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mDisplayListener:Ldev/cobalt/util/DisplayUtil$Listener;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mWasDisplayOn:Z

    .line 152
    return-void
.end method

.method static addRetryUrlParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "count"
        }
    .end annotation

    .line 853
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 854
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    return-object p0

    .line 857
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 859
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 860
    const/4 v2, 0x0

    .line 862
    .local v2, "retryParamAdded":Z
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "netdialog_retry"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 863
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 864
    if-nez v2, :cond_2

    .line 865
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 866
    const/4 v2, 0x1

    goto :goto_2

    .line 869
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 870
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 871
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 873
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 875
    :cond_3
    if-nez v2, :cond_4

    .line 876
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 879
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading URL with retry param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "starboard"

    invoke-static {v6, v4, v5}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    return-object v3
.end method

.method private appendIntentArgs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commandLineArgs"

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltActivity;->getCommandLineParamsFromIntent(Landroid/content/Intent;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "intentArgs":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 183
    return-void

    .line 185
    :cond_1
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method static appendMetaDataArgs(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "metaData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "metaData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 156
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    const-string v0, "cobalt.ENABLE_SPLASH_SCREEN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "enableSplashScreen":Z
    if-nez v0, :cond_1

    .line 162
    const-string v1, "--enable-features=DisableSplashScreen"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    const-string v1, "cobalt.ENABLE_FEATURES"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "enableFeatures":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    return-void

    .line 173
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--enable-features="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method private checkDisplayState()V
    .locals 4

    .line 1038
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->isDisplayOn()Z

    move-result v0

    .line 1039
    .local v0, "isDisplayOn":Z
    iget-boolean v1, p0, Ldev/cobalt/coat/CobaltActivity;->mWasDisplayOn:Z

    if-eq v0, v1, :cond_0

    .line 1040
    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mWasDisplayOn:Z

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display state changed: isDisplayOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "starboard"

    invoke-static {v3, v1, v2}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    invoke-direct {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->updateShellActivityVisible(Z)V

    .line 1046
    :cond_0
    return-void
.end method

.method private createNewSurfaceView()V
    .locals 8

    .line 956
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    if-eqz v0, :cond_0

    .line 957
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v0}, Ldev/cobalt/media/VideoSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 960
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const-string/jumbo v3, "starboard"

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    .line 961
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v4, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 962
    .local v4, "index":I
    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removed mVideoSurfaceView at index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    new-instance v5, Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {v5, p0}, Ldev/cobalt/media/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    .line 966
    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inserted new mVideoSurfaceView at index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v2}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    .end local v4    # "index":I
    goto :goto_0

    .line 972
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected surface view parent class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    :goto_0
    return-void
.end method

.method private finishInitialization(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->initializePlatformAudioSink()V

    .line 351
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    iget-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    new-instance v2, Ldev/cobalt/coat/CobaltActivity$3;

    invoke-direct {v2, p0}, Ldev/cobalt/coat/CobaltActivity$3;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Ldev/cobalt/shell/ShellManager;->launchShell(Ljava/lang/String;Ljava/lang/String;Ldev/cobalt/shell/Shell$OnWebContentsReadyListener;)V

    .line 370
    return-void
.end method

.method private initializationFailed()V
    .locals 4

    .line 374
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "starboard"

    const-string v3, "ContentView initialization failed."

    invoke-static {v2, v3, v1}, Ldev/cobalt/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    sget v1, Ldev/cobalt/coat/R$string;->browser_process_initialization_failed:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->finish()V

    .line 379
    return-void
.end method

.method private initializeJavaBridge()V
    .locals 8

    .line 530
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "starboard"

    const-string v2, "initializeJavaBridge"

    invoke-static {v1, v2, v0}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 533
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz v0, :cond_1

    .line 542
    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->mJavaScriptAndroidObjectList:Ljava/util/List;

    new-instance v3, Ldev/cobalt/coat/javabridge/HTMLMediaElementExtension;

    invoke-direct {v3, p0}, Ldev/cobalt/coat/javabridge/HTMLMediaElementExtension;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-static {v0}, Lorg/chromium/content_public/browser/JavascriptInjector;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/JavascriptInjector;

    move-result-object v2

    .line 548
    .local v2, "javascriptInjector":Lorg/chromium/content_public/browser/JavascriptInjector;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/chromium/content_public/browser/JavascriptInjector;->setAllowInspection(Z)V

    .line 549
    iget-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->mJavaScriptAndroidObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;

    .line 550
    .local v4, "javascriptAndroidObject":Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;
    nop

    .line 552
    invoke-interface {v4}, Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;->getJavaScriptInterfaceName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add JavaScriptAndroidObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-static {v1, v5}, Ldev/cobalt/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    nop

    .line 555
    invoke-interface {v4}, Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;->getJavaScriptInterfaceName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ldev/cobalt/coat/javabridge/CobaltJavaScriptInterface;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {v2, v4, v5, v6, v7}, Lorg/chromium/content_public/browser/JavascriptInjector;->addPossiblyUnsafeInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 558
    .end local v4    # "javascriptAndroidObject":Ldev/cobalt/coat/javabridge/CobaltJavaScriptAndroidObject;
    goto :goto_0

    .line 559
    :cond_0
    return-void

    .line 534
    .end local v2    # "javascriptInjector":Lorg/chromium/content_public/browser/JavascriptInjector;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "webContents is null in initializeJavaBridge. This should never happen."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isDisplayOn()Z
    .locals 4

    .line 1022
    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1023
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 1024
    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->cacheDefaultDisplay(Landroid/content/Context;)V

    .line 1025
    invoke-static {}, Ldev/cobalt/util/DisplayUtil;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1027
    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1029
    return v1

    .line 1031
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    .line 1034
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private static isNvidiaShield()Z
    .locals 2

    .line 1016
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1017
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shield"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1016
    :goto_1
    return v0
.end method

.method static synthetic lambda$createContent$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .line 275
    const-string v0, "--url="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createContent$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 277
    const-string v0, "--url="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$reloadUrl$2(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;

    .line 815
    invoke-virtual {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->reloadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private maybeRegisterNetworkRecoveryObserver()V
    .locals 1

    .line 757
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsNetworkRecoveryObserverRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHasHiddenSplashScreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$5;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/CobaltActivity$5;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 769
    :cond_1
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->init()Lorg/chromium/net/NetworkChangeNotifier;

    .line 770
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsNetworkRecoveryObserverRegistered:Z

    .line 772
    return-void

    .line 758
    :cond_2
    :goto_0
    return-void
.end method

.method private registerDisplayListener()V
    .locals 1

    .line 1049
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mDisplayListener:Ldev/cobalt/util/DisplayUtil$Listener;

    invoke-static {v0}, Ldev/cobalt/util/DisplayUtil;->registerListener(Ldev/cobalt/util/DisplayUtil$Listener;)V

    .line 1050
    return-void
.end method

.method static resetRetryCount()V
    .locals 2

    .line 886
    sget-object v0, Ldev/cobalt/coat/CobaltActivity;->sRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 887
    return-void
.end method

.method private startDIALServers()V
    .locals 6

    .line 568
    const-string/jumbo v0, "starboard"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ldev/cobalt/dial/DIALServer;->getInstance()Ldev/cobalt/dial/DIALServer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldev/cobalt/dial/DIALServer;->start(Landroid/content/Context;)V

    .line 569
    invoke-static {}, Ldev/cobalt/dial/DiscoveryServer;->getInstance()Ldev/cobalt/dial/DiscoveryServer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldev/cobalt/dial/DiscoveryServer;->start(Landroid/content/Context;)V

    .line 570
    const-string v2, "DIAL servers started"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start DIAL servers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Ldev/cobalt/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unregisterDisplayListener()V
    .locals 1

    .line 1053
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mDisplayListener:Ldev/cobalt/util/DisplayUtil$Listener;

    invoke-static {v0}, Ldev/cobalt/util/DisplayUtil;->unregisterListener(Ldev/cobalt/util/DisplayUtil$Listener;)V

    .line 1054
    return-void
.end method

.method private unregisterNetworkRecoveryObserver()V
    .locals 1

    .line 775
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsNetworkRecoveryObserverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsNetworkRecoveryObserverRegistered:Z

    .line 779
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mNetworkRecoveryObserver:Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 780
    return-void

    .line 776
    :cond_1
    :goto_0
    return-void
.end method

.method private updateShellActivityVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    invoke-virtual {v0, p1}, Ldev/cobalt/shell/ShellManager;->onActivityVisible(Z)V

    .line 1013
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndRetryOnNetworkOnline()V
    .locals 7

    .line 783
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHasHiddenSplashScreen:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->unregisterNetworkRecoveryObserver()V

    .line 785
    return-void

    .line 787
    :cond_0
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    return-void

    .line 790
    :cond_1
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 791
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 792
    return-void

    .line 795
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 796
    .local v1, "now":J
    iget-wide v3, p0, Ldev/cobalt/coat/CobaltActivity;->mLastRetryTimestampMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 798
    return-void

    .line 800
    :cond_3
    iput-wide v1, p0, Ldev/cobalt/coat/CobaltActivity;->mLastRetryTimestampMs:J

    .line 802
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v3

    .line 803
    .local v3, "bridge":Ldev/cobalt/coat/StarboardBridge;
    const/4 v4, 0x0

    const-string/jumbo v5, "starboard"

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ldev/cobalt/coat/StarboardBridge;->getPlatformError()Ldev/cobalt/coat/PlatformError;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 804
    const-string v6, "Network is online and platform error is active; retrying URL load."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    invoke-virtual {v3}, Ldev/cobalt/coat/StarboardBridge;->getPlatformError()Ldev/cobalt/coat/PlatformError;

    move-result-object v4

    invoke-virtual {v4}, Ldev/cobalt/coat/PlatformError;->retry()V

    goto :goto_0

    .line 807
    :cond_4
    const-string v6, "Network is online and splash screen never hidden; reloading URL."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ldev/cobalt/coat/CobaltActivity;->reloadUrl(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void
.end method

.method protected createContent(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 203
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 206
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 207
    invoke-static {v2}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getCommandLineArgs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/coat/CommandLineOverrideHelper;->getFlagOverrides(Ljava/util/List;)V

    .line 210
    :cond_0
    nop

    .line 211
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v3, "cobalt-using-android-overlay"

    invoke-virtual {v0, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    .line 213
    invoke-static {p0}, Lorg/chromium/content_public/browser/DeviceUtils;->updateDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    .line 215
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 217
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized()V

    .line 218
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 225
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->getIntentUrlAsString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    const-string/jumbo v3, "starboard"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 227
    const-string/jumbo v0, "startDeepLink cannot be null, set it to empty string."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const-string v0, ""

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    .line 231
    :cond_1
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 232
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    const-string v5, "Cobalt.Android.ColdStart"

    if-nez v0, :cond_3

    .line 234
    invoke-static {v5, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 235
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v5, "use-custom-android-fonts-xml"

    invoke-virtual {v0, v5}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/cobalt/coat/FontUtil;->copyFontsXml(Landroid/content/Context;)V

    .line 238
    :cond_2
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getArgs()[Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Ldev/cobalt/coat/CobaltActivity;->createStarboardBridge([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    .line 239
    .local v0, "starboardBridge":Ldev/cobalt/coat/StarboardBridge;
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Ldev/cobalt/coat/StarboardBridge$HostApplication;

    invoke-interface {v5, v0}, Ldev/cobalt/coat/StarboardBridge$HostApplication;->setStarboardBridge(Ldev/cobalt/coat/StarboardBridge;)V

    .line 240
    invoke-virtual {v0, p0}, Ldev/cobalt/coat/StarboardBridge;->onActivityCreate(Landroid/app/Activity;)V

    .line 241
    .end local v0    # "starboardBridge":Ldev/cobalt/coat/StarboardBridge;
    goto :goto_0

    .line 243
    :cond_3
    if-nez p1, :cond_4

    .line 244
    invoke-static {v5, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 246
    :cond_4
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ldev/cobalt/coat/StarboardBridge;->handleDeepLink(Ljava/lang/String;)V

    .line 248
    :goto_0
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 250
    new-instance v0, Ldev/cobalt/shell/ShellManager;

    invoke-direct {v0, p0}, Ldev/cobalt/shell/ShellManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    .line 251
    const/4 v0, 0x1

    .line 252
    .local v0, "listenToActivityState":Z
    invoke-static {p0}, Lorg/chromium/ui/base/IntentRequestTracker;->createFromActivity(Landroid/app/Activity;)Lorg/chromium/ui/base/IntentRequestTracker;

    move-result-object v5

    iput-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    .line 253
    new-instance v6, Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v9, p0, Ldev/cobalt/coat/CobaltActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    iput-object v6, v7, Ldev/cobalt/coat/CobaltActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    .line 260
    iget-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-interface {v5, p1}, Lorg/chromium/ui/base/IntentRequestTracker;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    iget-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    iget-object v6, v7, Ldev/cobalt/coat/CobaltActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v5, v6}, Ldev/cobalt/shell/ShellManager;->setWindow(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 264
    iget-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v6, v7, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    .line 265
    invoke-virtual {v6}, Ldev/cobalt/shell/ShellManager;->getContentViewRenderView()Ldev/cobalt/shell/ContentViewRenderView;

    move-result-object v6

    invoke-virtual {v6}, Ldev/cobalt/shell/ContentViewRenderView;->getAnchorView()Landroid/view/View;

    move-result-object v6

    .line 264
    invoke-virtual {v5, v6}, Lorg/chromium/ui/base/ActivityWindowAndroid;->setAnimationPlaceholderView(Landroid/view/View;)V

    .line 266
    new-instance v5, Ldev/cobalt/coat/CobaltA11yHelper;

    iget-object v6, v7, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    .line 267
    invoke-virtual {v6}, Ldev/cobalt/shell/ShellManager;->getContentViewRenderView()Ldev/cobalt/shell/ContentViewRenderView;

    move-result-object v6

    invoke-virtual {v6}, Ldev/cobalt/shell/ContentViewRenderView;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ldev/cobalt/coat/CobaltA11yHelper;-><init>(Ldev/cobalt/coat/CobaltActivity;Landroid/view/View;)V

    iput-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mA11yHelper:Ldev/cobalt/coat/CobaltA11yHelper;

    .line 269
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->maybeRegisterNetworkRecoveryObserver()V

    .line 271
    iget-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v7, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 272
    :cond_5
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v5

    invoke-virtual {v5}, Ldev/cobalt/coat/StarboardBridge;->getArgs()[Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "args":[Ljava/lang/String;
    nop

    .line 274
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 275
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 276
    invoke-interface {v6}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v6

    new-instance v8, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 277
    invoke-virtual {v6, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 278
    invoke-virtual {v6, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    .line 285
    .end local v5    # "args":[Ljava/lang/String;
    :cond_6
    iget-object v2, v7, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v7, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    const-string v5, "https://www.youtube.com/tv"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 286
    :cond_7
    const-string v2, "Non-Youtube startup URL detected."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v2

    invoke-virtual {v2}, Ldev/cobalt/shell/StartupGuard;->disarm()V

    .line 290
    :cond_8
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 292
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 293
    nop

    .line 294
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v1

    invoke-virtual {v1}, Ldev/cobalt/coat/StarboardBridge;->getArgs()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    iget-wide v5, v7, Ldev/cobalt/coat/CobaltActivity;->mTimeInNanoseconds:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    .line 293
    invoke-static {v1, v2, v5, v6}, Ldev/cobalt/coat/AppEventBridge;->handleStartEvent([Ljava/lang/String;Ljava/lang/String;J)V

    .line 297
    const-string v1, "Browser process init succeeded"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 303
    :cond_9
    invoke-direct {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->finishInitialization(Landroid/os/Bundle;)V

    goto :goto_2

    .line 300
    :cond_a
    :goto_1
    const-string v1, "Activity is finishing or destroyed; skipping finishInitialization."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    return-void

    .line 305
    :cond_b
    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v2

    new-instance v3, Ldev/cobalt/coat/CobaltActivity$2;

    invoke-direct {v3, p0, p1}, Ldev/cobalt/coat/CobaltActivity$2;-><init>(Ldev/cobalt/coat/CobaltActivity;Landroid/os/Bundle;)V

    .line 306
    invoke-interface {v2, v1, v4, v4, v3}, Lorg/chromium/content_public/browser/BrowserStartupController;->startBrowserProcessesAsync(IZZLorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    .line 337
    :goto_2
    return-void
.end method

.method protected bridge synthetic createStarboardBridge([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/BaseStarboardBridge;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "args",
            "startDeepLink"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Ldev/cobalt/coat/CobaltActivity;->createStarboardBridge([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createStarboardBridge([Ljava/lang/String;Ljava/lang/String;)Ldev/cobalt/coat/StarboardBridge;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "startDeepLink"
        }
    .end annotation
.end method

.method protected dispatchKeyEventToIme(II)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getImeAdapterImpl()Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v0

    .line 383
    .local v0, "imeAdapter":Lorg/chromium/content/browser/input/ImeAdapterImpl;
    if-nez v0, :cond_0

    .line 384
    const/4 v1, 0x0

    return v1

    .line 389
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 390
    .local v3, "eventTime":J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    move-wide v5, v3

    move v8, p1

    move v7, p2

    .end local p1    # "keyCode":I
    .end local p2    # "action":I
    .local v7, "action":I
    .local v8, "keyCode":I
    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public evaluateJavaScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsCode"
        }
    .end annotation

    .line 978
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$8;

    invoke-direct {v0, p0, p1}, Ldev/cobalt/coat/CobaltActivity$8;-><init>(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 988
    return-void
.end method

.method public getActiveShell()Ldev/cobalt/shell/Shell;
    .locals 1

    .line 447
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    invoke-virtual {v0}, Ldev/cobalt/shell/ShellManager;->getActiveShell()Ldev/cobalt/shell/Shell;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .line 456
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveShell()Ldev/cobalt/shell/Shell;

    move-result-object v0

    .line 457
    .local v0, "shell":Ldev/cobalt/shell/Shell;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/cobalt/shell/Shell;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getCommandLineArgs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->isDevelopmentBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "--remote-allow-origins=https://chrome-devtools-frontend.appspot.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActivityMetaData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/cobalt/coat/CobaltActivity;->appendMetaDataArgs(Ljava/util/List;Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ldev/cobalt/util/JavaSwitches;->getExtraCommandLineArgs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    invoke-direct {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->appendIntentArgs(Ljava/util/List;)V

    .line 198
    return-object v0
.end method

.method protected getImeAdapterImpl()Lorg/chromium/content/browser/input/ImeAdapterImpl;
    .locals 2

    .line 462
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 463
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected getJavaSwitches()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mJavaSwitches:Ljava/util/Map;

    return-object v0
.end method

.method public getLastSentIntent()Landroid/content/Intent;
    .locals 1

    .line 432
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mLastSentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getShellManager()Ldev/cobalt/shell/ShellManager;
    .locals 1

    .line 440
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    return-object v0
.end method

.method protected bridge synthetic getStarboardBridge()Ldev/cobalt/coat/BaseStarboardBridge;
    .locals 1

    .line 82
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    return-object v0
.end method

.method protected getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;
    .locals 1

    .line 584
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Ldev/cobalt/coat/StarboardBridge$HostApplication;

    invoke-interface {v0}, Ldev/cobalt/coat/StarboardBridge$HostApplication;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    return-object v0
.end method

.method public hasHiddenSplashScreen()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHasHiddenSplashScreen:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 420
    invoke-super {p0, p1, p2, p3}, Ldev/cobalt/coat/BaseCobaltActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 421
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIntentRequestTracker:Lorg/chromium/ui/base/IntentRequestTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/ui/base/IntentRequestTracker;->onActivityResult(IILandroid/content/Intent;)Z

    .line 422
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 494
    invoke-super {p0, p1}, Ldev/cobalt/coat/BaseCobaltActivity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->startDIALServers()V

    .line 498
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->setupStartupGuard()V

    .line 499
    invoke-virtual {p0, p1}, Ldev/cobalt/coat/CobaltActivity;->createContent(Landroid/os/Bundle;)V

    .line 500
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->init()Lorg/chromium/net/NetworkChangeNotifier;

    .line 502
    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 504
    :cond_0
    sget-boolean v0, Ldev/cobalt/coat/CobaltActivity;->sIsMemoryPressureInitialized:Z

    if-nez v0, :cond_1

    .line 505
    invoke-static {}, Lorg/chromium/base/memory/MemoryPressureUma;->initializeForBrowser()V

    .line 506
    sget-object v0, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->registerComponentCallbacks()V

    .line 507
    sput-boolean v1, Ldev/cobalt/coat/CobaltActivity;->sIsMemoryPressureInitialized:Z

    .line 510
    :cond_1
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    if-nez v0, :cond_2

    .line 511
    new-instance v0, Ldev/cobalt/media/VideoSurfaceView;

    invoke-direct {v0, p0}, Ldev/cobalt/media/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    .line 512
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mVideoSurfaceView:Ldev/cobalt/media/VideoSurfaceView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Ldev/cobalt/coat/CobaltActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 516
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "starboard"

    const-string v2, "Do not create VideoSurfaceView."

    invoke-static {v1, v2, v0}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :goto_0
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 521
    invoke-static {p0}, Ldev/cobalt/coat/CobaltActivity$OnBackInvokedHelper;->register(Ldev/cobalt/coat/CobaltActivity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mBackInvokedCallback:Ljava/lang/Object;

    .line 523
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 730
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->unregisterNetworkRecoveryObserver()V

    .line 731
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 732
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->unregisterDisplayListener()V

    .line 733
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 735
    iput-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    .line 738
    :cond_0
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mShellManager:Ldev/cobalt/shell/ShellManager;

    invoke-virtual {v0}, Ldev/cobalt/shell/ShellManager;->destroy()V

    .line 741
    :cond_1
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->destroy()V

    .line 744
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    .line 745
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mBackInvokedCallback:Ljava/lang/Object;

    invoke-static {p0, v0}, Ldev/cobalt/coat/CobaltActivity$OnBackInvokedHelper;->unregister(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/Object;)V

    .line 746
    iput-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mBackInvokedCallback:Ljava/lang/Object;

    .line 748
    :cond_3
    invoke-super {p0}, Ldev/cobalt/coat/BaseCobaltActivity;->onDestroy()V

    .line 749
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 395
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 396
    iput-boolean v1, p0, Ldev/cobalt/coat/CobaltActivity;->mPhysicalBackKeyPressed:Z

    .line 400
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_4

    invoke-static {p1}, Ldev/cobalt/coat/KeyboardUtils;->isPartnerFallbackKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 403
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/cobalt/coat/CobaltActivity;->dispatchKeyEventToIme(II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2}, Ldev/cobalt/coat/BaseCobaltActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1

    .line 401
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Ldev/cobalt/coat/BaseCobaltActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 408
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_4

    invoke-static {p1}, Ldev/cobalt/coat/KeyboardUtils;->isPartnerFallbackKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 412
    iput-boolean v1, p0, Ldev/cobalt/coat/CobaltActivity;->mPhysicalBackKeyPressed:Z

    .line 414
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldev/cobalt/coat/CobaltActivity;->dispatchKeyEventToIme(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-super {p0, p1, p2}, Ldev/cobalt/coat/BaseCobaltActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1

    .line 409
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Ldev/cobalt/coat/BaseCobaltActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mPhysicalBackKeyPressed:Z

    .line 645
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ldev/cobalt/coat/AppEventBridge;->handleBlurEvent(J)V

    goto :goto_0

    .line 648
    :cond_0
    invoke-static {}, Ldev/cobalt/browser/CobaltContentBrowserClient;->dispatchBlur()V

    .line 650
    :goto_0
    invoke-super {p0}, Ldev/cobalt/coat/BaseCobaltActivity;->onPause()V

    .line 651
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldev/cobalt/coat/StarboardBridge;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 905
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 712
    invoke-super {p0}, Ldev/cobalt/coat/BaseCobaltActivity;->onResume()V

    .line 713
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 714
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->checkAndRetryOnNetworkOnline()V

    .line 715
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 718
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "starboard"

    const-string v3, "Request focus on the root view on resume."

    invoke-static {v2, v3, v1}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :cond_0
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ldev/cobalt/coat/AppEventBridge;->handleFocusEvent(J)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-static {}, Ldev/cobalt/browser/CobaltContentBrowserClient;->dispatchFocus()V

    .line 725
    :goto_0
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 726
    return-void
.end method

.method public onSplashScreenHidden()V
    .locals 3

    # NetTV patch: TizenTube's userscript reloads the first page, which already
    # consumed the cold-start deep link. Replay it once per process when the
    # real app hides the splash screen.
    sget-boolean v0, Ldev/cobalt/coat/CobaltActivity;->sNetTvDeepLinkReplayed:Z

    if-nez v0, :netTvDone

    const/4 v0, 0x1

    sput-boolean v0, Ldev/cobalt/coat/CobaltActivity;->sNetTvDeepLinkReplayed:Z


    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mStartDeepLink:Ljava/lang/String;

    if-eqz v0, :netTvDone

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :netTvDone

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v1

    if-eqz v1, :netTvDone

    const-string v2, "NetTV"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ldev/cobalt/coat/StarboardBridge;->handleDeepLink(Ljava/lang/String;)V

    :netTvDone
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHasHiddenSplashScreen:Z

    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->unregisterNetworkRecoveryObserver()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 589
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 592
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->startDIALServers()V

    .line 594
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->isDevelopmentBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getStarboardBridge()Ldev/cobalt/coat/StarboardBridge;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/coat/StarboardBridge;->getAudioOutputManager()Ldev/cobalt/media/AudioOutputManager;

    move-result-object v0

    invoke-virtual {v0}, Ldev/cobalt/media/AudioOutputManager;->dumpAllOutputDevices()V

    .line 596
    invoke-static {}, Ldev/cobalt/media/MediaCodecCapabilitiesLogger;->dumpAllDecoders()V

    .line 598
    :cond_0
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    const-string/jumbo v1, "starboard"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 599
    const-string v0, "Use AndroidOverlay for Video SurfaceView."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    :cond_1
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mForceCreateNewVideoSurfaceView:Z

    if-eqz v0, :cond_2

    .line 601
    const-string v0, "Force to create a new video surface."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->createNewSurfaceView()V

    .line 605
    :cond_2
    :goto_0
    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->cacheDefaultDisplay(Landroid/content/Context;)V

    .line 606
    invoke-static {p0}, Ldev/cobalt/util/DisplayUtil;->addDisplayListener(Landroid/content/Context;)V

    .line 607
    invoke-static {p0}, Ldev/cobalt/media/AudioOutputManager;->addAudioDeviceListener(Landroid/content/Context;)V

    .line 609
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->isDisplayOn()Z

    move-result v0

    iput-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mWasDisplayOn:Z

    .line 611
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->registerDisplayListener()V

    .line 614
    :cond_3
    invoke-super {p0}, Ldev/cobalt/coat/BaseCobaltActivity;->onStart()V

    .line 616
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 617
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    .line 621
    :cond_4
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ldev/cobalt/coat/AppEventBridge;->handleRevealEvent(J)V

    goto :goto_1

    .line 624
    :cond_5
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 625
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz v0, :cond_7

    .line 626
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v1

    const-string v3, "EnableFreeze"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 628
    :cond_6
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onResume()V

    .line 631
    :cond_7
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 632
    iget-boolean v1, p0, Ldev/cobalt/coat/CobaltActivity;->mWasDisplayOn:Z

    invoke-direct {p0, v1}, Ldev/cobalt/coat/CobaltActivity;->updateShellActivityVisible(Z)V

    goto :goto_1

    .line 634
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ldev/cobalt/coat/CobaltActivity;->updateShellActivityVisible(Z)V

    .line 637
    .end local v0    # "webContents":Lorg/chromium/content_public/browser/WebContents;
    :goto_1
    sget-object v0, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {v0, v2}, Lorg/chromium/base/memory/MemoryPressureMonitor;->enablePolling(Z)V

    .line 639
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ldev/cobalt/shell/StartupGuard;->setStartupMilestone(I)V

    .line 640
    return-void
.end method

.method protected onStop()V
    .locals 8

    .line 655
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 656
    .local v0, "stopTimestamp":J
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    invoke-direct {p0}, Ldev/cobalt/coat/CobaltActivity;->unregisterDisplayListener()V

    .line 659
    :cond_0
    invoke-super {p0}, Ldev/cobalt/coat/BaseCobaltActivity;->onStop()V

    .line 661
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->useStarboardLifeCycle()Z

    move-result v2

    const-string v3, "EnableFreeze"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 662
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    invoke-static {v0, v1}, Ldev/cobalt/coat/AppEventBridge;->handleFreezeEvent(J)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-static {v0, v1}, Ldev/cobalt/coat/AppEventBridge;->handleConcealEvent(J)V

    goto :goto_0

    .line 670
    :cond_2
    invoke-direct {p0, v4}, Ldev/cobalt/coat/CobaltActivity;->updateShellActivityVisible(Z)V

    .line 671
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    .line 672
    .local v2, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz v2, :cond_5

    .line 673
    invoke-static {}, Ldev/cobalt/coat/CobaltActivity;->isNvidiaShield()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 674
    iget-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 675
    iget-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    :cond_3
    new-instance v3, Ldev/cobalt/coat/CobaltActivity$4;

    invoke-direct {v3, p0}, Ldev/cobalt/coat/CobaltActivity$4;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    iput-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    .line 688
    iget-object v3, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Ldev/cobalt/coat/CobaltActivity;->mFreezeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 689
    :cond_4
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 691
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->onFreeze()V

    .line 698
    .end local v2    # "webContents":Lorg/chromium/content_public/browser/WebContents;
    :cond_5
    :goto_0
    invoke-static {}, Ldev/cobalt/browser/CobaltContentBrowserClient;->flushCookiesAndLocalStorage()V

    .line 700
    invoke-static {}, Ldev/cobalt/media/VideoSurfaceView;->getCurrentSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 701
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldev/cobalt/coat/CobaltActivity;->mForceCreateNewVideoSurfaceView:Z

    .line 703
    :cond_6
    sget-object v2, Lorg/chromium/base/memory/MemoryPressureMonitor;->INSTANCE:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {v2}, Lorg/chromium/base/memory/MemoryPressureMonitor;->disablePolling()V

    .line 706
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 707
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v4, v3, v5}, Ldev/cobalt/coat/CobaltActivity;->setVideoSurfaceBounds(IIII)V

    .line 708
    return-void
.end method

.method public reloadUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "targetUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetUrl"
        }
    .end annotation

    .line 814
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ldev/cobalt/coat/CobaltActivity$$ExternalSyntheticLambda2;-><init>(Ldev/cobalt/coat/CobaltActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void

    .line 819
    :cond_0
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 820
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 821
    .local v1, "currentUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "starboard"

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 822
    const-string v2, "No URL provided, using visible URL"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v1

    .line 826
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "about:blank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    .line 827
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 828
    iget-object v2, p0, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL is blank or empty, falling back to startup URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    iget-object v1, p0, Ldev/cobalt/coat/CobaltActivity;->mStartupUrl:Ljava/lang/String;

    .line 832
    :cond_4
    sget-object v2, Ldev/cobalt/coat/CobaltActivity;->sRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 834
    .local v2, "retryCount":I
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 835
    if-eqz v0, :cond_6

    .line 836
    const-string v5, "Visible URL and fallback URL are empty, reloading without adding retry param"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    goto :goto_1

    .line 840
    :cond_5
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveShell()Ldev/cobalt/shell/Shell;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 841
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getActiveShell()Ldev/cobalt/shell/Shell;

    move-result-object v3

    invoke-static {v1, v2}, Ldev/cobalt/coat/CobaltActivity;->addRetryUrlParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldev/cobalt/shell/Shell;->loadUrl(Ljava/lang/String;)V

    .line 844
    :cond_6
    :goto_1
    return-void
.end method

.method public resetVideoSurface()V
    .locals 1

    .line 908
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    if-eqz v0, :cond_0

    .line 909
    return-void

    .line 911
    :cond_0
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$6;

    invoke-direct {v0, p0}, Ldev/cobalt/coat/CobaltActivity$6;-><init>(Ldev/cobalt/coat/CobaltActivity;)V

    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public setFrameRate(FI)V
    .locals 2
    .param p1, "frameRate"    # F
    .param p2, "strategy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameRate",
            "strategy"
        }
    .end annotation

    .line 1105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1106
    return-void

    .line 1109
    :cond_0
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$10;

    invoke-direct {v0, p0, p1, p2}, Ldev/cobalt/coat/CobaltActivity$10;-><init>(Ldev/cobalt/coat/CobaltActivity;FI)V

    .line 1120
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1121
    return-void
.end method

.method public setVideoSurfaceBounds(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 921
    iget-boolean v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsCobaltUsingAndroidOverlay:Z

    if-eqz v0, :cond_0

    .line 922
    return-void

    .line 924
    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    goto :goto_0

    .line 928
    :cond_1
    new-instance v1, Ldev/cobalt/coat/CobaltActivity$7;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-direct/range {v1 .. v6}, Ldev/cobalt/coat/CobaltActivity$7;-><init>(Ldev/cobalt/coat/CobaltActivity;IIII)V

    invoke-virtual {p0, v1}, Ldev/cobalt/coat/CobaltActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    return-void

    .line 924
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :cond_2
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 926
    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    :goto_0
    return-void
.end method

.method setupStartupGuard()V
    .locals 10

    .line 468
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v0

    .line 469
    .local v0, "switches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "DisableStartupGuard"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "starboard"

    if-eqz v1, :cond_0

    .line 470
    const-string v1, "StartupGuard is disabled by Java switch."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    return-void

    .line 474
    :cond_0
    const-wide/16 v4, 0x78

    .line 475
    .local v4, "timeout":J
    const-string v1, "StartupGuardIntervalInSeconds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 476
    .local v1, "intervalStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 478
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 479
    .local v6, "parsedTimeout":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 480
    move-wide v4, v6

    goto :goto_0

    .line 482
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid StartupGuard interval (must be positive): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v6    # "parsedTimeout":J
    :goto_0
    goto :goto_1

    .line 484
    :catch_0
    move-exception v6

    .line 485
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid StartupGuard interval string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Ldev/cobalt/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Arming StartupGuard with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " second timeout."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v2}, Ldev/cobalt/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Ldev/cobalt/shell/StartupGuard;->getInstance()Ldev/cobalt/shell/StartupGuard;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ldev/cobalt/shell/StartupGuard;->scheduleCrash(J)V

    .line 490
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Ldev/cobalt/coat/CobaltActivity;->mLastSentIntent:Landroid/content/Intent;

    .line 428
    invoke-super {p0, p1}, Ldev/cobalt/coat/BaseCobaltActivity;->startActivity(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method public toggleKeepScreenOn(Z)V
    .locals 1
    .param p1, "keepOn"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepOn"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsKeepScreenOnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 992
    new-instance v0, Ldev/cobalt/coat/CobaltActivity$9;

    invoke-direct {v0, p0, p1}, Ldev/cobalt/coat/CobaltActivity$9;-><init>(Ldev/cobalt/coat/CobaltActivity;Z)V

    invoke-virtual {p0, v0}, Ldev/cobalt/coat/CobaltActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1005
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldev/cobalt/coat/CobaltActivity;->mIsKeepScreenOnEnabled:Ljava/lang/Boolean;

    .line 1007
    :cond_0
    return-void
.end method

.method public useStarboardLifeCycle()Z
    .locals 2

    .line 896
    invoke-virtual {p0}, Ldev/cobalt/coat/CobaltActivity;->getJavaSwitches()Ljava/util/Map;

    move-result-object v0

    const-string v1, "UseStarboardLifeCycle"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "use-starboard-lifecycle"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 896
    :goto_1
    return v0
.end method
