.class public Lio/socket/hasbinary/HasBinary;
.super Ljava/lang/Object;
.source "HasBinary.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lio/socket/hasbinary/HasBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _hasBinary(Ljava/lang/Object;)Z
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 24
    :cond_4
    instance-of v1, p0, [B

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 25
    return v2

    .line 28
    :cond_a
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_3b

    .line 29
    move-object v1, p0

    check-cast v1, Lorg/json/JSONArray;

    .line 30
    .local v1, "_obj":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 31
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_3a

    .line 34
    :try_start_18
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_24} :catch_2f

    .line 38
    .local v5, "v":Ljava/lang/Object;
    :goto_24
    nop

    .line 39
    invoke-static {v5}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 40
    return v2

    .line 31
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 35
    :catch_2f
    move-exception v2

    .line 36
    .local v2, "e":Lorg/json/JSONException;
    sget-object v5, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "An error occured while retrieving data from JSONArray"

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return v0

    .line 31
    .end local v1    # "_obj":Lorg/json/JSONArray;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_3a
    goto :goto_6a

    .line 43
    :cond_3b
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_6a

    .line 44
    move-object v1, p0

    check-cast v1, Lorg/json/JSONObject;

    .line 45
    .local v1, "_obj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    .local v3, "keys":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "key":Ljava/lang/String;
    :try_start_52
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_56} :catch_5f

    .line 54
    .restart local v5    # "v":Ljava/lang/Object;
    nop

    .line 55
    invoke-static {v5}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 56
    return v2

    .line 58
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/Object;
    :cond_5e
    goto :goto_46

    .line 51
    .restart local v4    # "key":Ljava/lang/String;
    :catch_5f
    move-exception v2

    .line 52
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v5, Lio/socket/hasbinary/HasBinary;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "An error occured while retrieving data from JSONObject"

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return v0

    .line 43
    .end local v1    # "_obj":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "keys":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :cond_6a
    :goto_6a
    nop

    .line 61
    :cond_6b
    return v0
.end method

.method public static hasBinary(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "data"    # Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Lio/socket/hasbinary/HasBinary;->_hasBinary(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
