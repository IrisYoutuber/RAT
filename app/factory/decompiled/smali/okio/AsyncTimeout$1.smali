.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lokio/AsyncTimeout;

    .line 159
    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V

    .line 207
    :try_start_6
    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 208
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_13
    move-exception v1

    goto :goto_1d

    .line 209
    :catch_15
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    throw v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    :goto_1d
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Z)V

    throw v1
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V

    .line 194
    :try_start_6
    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 195
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_13
    move-exception v1

    goto :goto_1d

    .line 196
    :catch_15
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    throw v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    :goto_1d
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Z)V

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 217
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 163
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_51

    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "toWrite":J
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    :goto_12
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_2d

    .line 167
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    .line 168
    .local v3, "segmentSize":I
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 169
    cmp-long v4, v0, p2

    if-ltz v4, :cond_2a

    .line 170
    move-wide v0, p2

    .line 171
    goto :goto_2d

    .line 166
    .end local v3    # "segmentSize":I
    :cond_2a
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    .line 176
    .end local v2    # "s":Lokio/Segment;
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    .line 177
    .local v2, "throwOnTimeout":Z
    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3}, Lokio/AsyncTimeout;->enter()V

    .line 179
    :try_start_33
    iget-object v3, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_43
    .catchall {:try_start_33 .. :try_end_38} :catchall_41

    .line 180
    sub-long/2addr p2, v0

    .line 181
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v3, v2}, Lokio/AsyncTimeout;->exit(Z)V

    .line 186
    nop

    .line 187
    .end local v0    # "toWrite":J
    .end local v2    # "throwOnTimeout":Z
    goto :goto_8

    .line 185
    .restart local v0    # "toWrite":J
    .restart local v2    # "throwOnTimeout":Z
    :catchall_41
    move-exception v3

    goto :goto_4b

    .line 182
    :catch_43
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    :try_start_44
    iget-object v4, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4, v3}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    .end local v0    # "toWrite":J
    .end local v2    # "throwOnTimeout":Z
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v4
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "toWrite":J
    .restart local v2    # "throwOnTimeout":Z
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_4b
    iget-object v4, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v4, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v3

    .line 188
    .end local v0    # "toWrite":J
    .end local v2    # "throwOnTimeout":Z
    :cond_51
    return-void
.end method
