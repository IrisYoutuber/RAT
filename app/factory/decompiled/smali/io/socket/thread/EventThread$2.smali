.class final Lio/socket/thread/EventThread$2;
.super Ljava/lang/Object;
.source "EventThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/thread/EventThread;->nextTick(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lio/socket/thread/EventThread$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 80
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lio/socket/thread/EventThread$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_27
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    .line 85
    const-class v1, Lio/socket/thread/EventThread;

    monitor-enter v1

    .line 86
    :try_start_9
    invoke-static {}, Lio/socket/thread/EventThread;->access$310()I

    .line 87
    invoke-static {}, Lio/socket/thread/EventThread;->access$300()I

    move-result v2

    if-nez v2, :cond_1f

    .line 88
    invoke-static {}, Lio/socket/thread/EventThread;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    invoke-static {v0}, Lio/socket/thread/EventThread;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 90
    invoke-static {v0}, Lio/socket/thread/EventThread;->access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;

    .line 92
    :cond_1f
    monitor-exit v1

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw v0

    .line 85
    :catchall_25
    move-exception v1

    goto :goto_34

    .line 81
    :catch_27
    move-exception v1

    .line 82
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_28
    invoke-static {}, Lio/socket/thread/EventThread;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Task threw exception"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    throw v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_25

    .line 85
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_34
    const-class v2, Lio/socket/thread/EventThread;

    monitor-enter v2

    .line 86
    :try_start_37
    invoke-static {}, Lio/socket/thread/EventThread;->access$310()I

    .line 87
    invoke-static {}, Lio/socket/thread/EventThread;->access$300()I

    move-result v3

    if-nez v3, :cond_4d

    .line 88
    invoke-static {}, Lio/socket/thread/EventThread;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    invoke-static {v0}, Lio/socket/thread/EventThread;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 90
    invoke-static {v0}, Lio/socket/thread/EventThread;->access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;

    .line 92
    :cond_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_4f

    throw v1

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method
