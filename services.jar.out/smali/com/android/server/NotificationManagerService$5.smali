.class Lcom/android/server/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1215
    .local v9, action:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1216
    .local v20, queryRestart:Z
    const/16 v18, 0x0

    .line 1217
    .local v18, queryRemove:Z
    const/16 v16, 0x0

    .line 1218
    .local v16, packageChanged:Z
    const/4 v12, 0x1

    .line 1220
    .local v12, cancelNotifications:Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1226
    :cond_0
    const/16 v17, 0x0

    .line 1227
    .local v17, pkgList:[Ljava/lang/String;
    if-eqz v18, :cond_3

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v19, 0x1

    .line 1230
    .local v19, queryReplace:Z
    :goto_0
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1231
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1263
    :goto_1
    const/4 v10, 0x0

    .line 1264
    .local v10, anyListenersInvolved:Z
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v1, v0

    if-lez v1, :cond_b

    .line 1265
    move-object/from16 v11, v17

    .local v11, arr$:[Ljava/lang/String;
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    if-ge v14, v15, :cond_b

    aget-object v2, v11, v14

    .line 1266
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v20, :cond_a

    const/4 v5, 0x1

    :goto_3
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 1270
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1271
    const/4 v10, 0x1

    .line 1265
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1227
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v10           #anyListenersInvolved:Z
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #queryReplace:Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 1232
    .restart local v19       #queryReplace:Z
    :cond_4
    if-eqz v20, :cond_5

    .line 1233
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 1235
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 1236
    .local v21, uri:Landroid/net/Uri;
    if-nez v21, :cond_7

    .line 1311
    .end local v17           #pkgList:[Ljava/lang/String;
    .end local v19           #queryReplace:Z
    .end local v21           #uri:Landroid/net/Uri;
    :cond_6
    :goto_4
    return-void

    .line 1239
    .restart local v17       #pkgList:[Ljava/lang/String;
    .restart local v19       #queryReplace:Z
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .restart local v2       #pkgName:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1243
    if-eqz v16, :cond_9

    .line 1246
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/Injector$NotificationManagerServiceHook;->getApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1248
    .local v13, enabled:I
    const/4 v1, 0x1

    if-eq v13, v1, :cond_8

    if-nez v13, :cond_9

    .line 1250
    :cond_8
    const/4 v12, 0x0

    .line 1260
    .end local v13           #enabled:I
    :cond_9
    :goto_5
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17           #pkgList:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v17, v1

    .restart local v17       #pkgList:[Ljava/lang/String;
    goto :goto_1

    .line 1267
    .end local v21           #uri:Landroid/net/Uri;
    .restart local v10       #anyListenersInvolved:Z
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 1276
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_b
    if-eqz v10, :cond_6

    .line 1278
    if-nez v19, :cond_c

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->disableNonexistentListeners()V

    .line 1283
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    goto :goto_4

    .line 1285
    .end local v10           #anyListenersInvolved:Z
    .end local v17           #pkgList:[Ljava/lang/String;
    .end local v19           #queryReplace:Z
    :cond_d
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_4

    .line 1289
    :cond_e
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mWasScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto :goto_4

    .line 1293
    :cond_f
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 1297
    :cond_10
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1298
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1299
    .local v8, userHandle:I
    if-ltz v8, :cond_6

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_4

    .line 1302
    .end local v8           #userHandle:I
    :cond_11
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOnNotificationLed:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 1307
    :cond_12
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$5;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 1252
    .restart local v2       #pkgName:Ljava/lang/String;
    .restart local v17       #pkgList:[Ljava/lang/String;
    .restart local v19       #queryReplace:Z
    .restart local v21       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    goto/16 :goto_5
.end method