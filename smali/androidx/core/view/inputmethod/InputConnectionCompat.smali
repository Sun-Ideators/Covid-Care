.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 8
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 132
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 133
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v1, 0x0

    .line 134
    .local v1, "supported":Z
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 135
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 137
    goto :goto_1

    .line 134
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 141
    return v4

    .line 144
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_3

    .line 145
    nop

    .line 146
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputContentInfo;

    .line 145
    invoke-interface {p0, v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v2

    return v2

    .line 148
    :cond_3
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    .line 150
    .local v2, "protocol":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 160
    return v4

    .line 153
    :cond_4
    const/4 v3, 0x0

    .line 154
    .local v3, "interop":Z
    goto :goto_2

    .line 156
    .end local v3    # "interop":Z
    :cond_5
    const/4 v3, 0x1

    .line 157
    .restart local v3    # "interop":Z
    nop

    .line 163
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v4, "params":Landroid/os/Bundle;
    nop

    .line 167
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 164
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    nop

    .line 171
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 168
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    nop

    .line 175
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v5

    .line 172
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-interface {p0, v5, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v5

    return v5
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 260
    if-eqz p0, :cond_4

    .line 263
    if-eqz p1, :cond_3

    .line 266
    if-eqz p2, :cond_2

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 270
    move-object v0, p2

    .line 271
    .local v0, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v1, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v1, p0, v2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v1

    .line 283
    .end local v0    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_0
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 285
    return-object p0

    .line 287
    :cond_1
    move-object v1, p2

    .line 288
    .local v1, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v3, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v3, p0, v2, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v3

    .line 267
    .end local v0    # "contentMimeTypes":[Ljava/lang/String;
    .end local v1    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onCommitContentListener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editorInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConnection must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 12
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 72
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    const-string v2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    const/4 v6, 0x0

    if-nez p1, :cond_0

    .line 73
    return v6

    .line 77
    :cond_0
    const-string v7, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v7, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 78
    const/4 v7, 0x0

    .local v7, "interop":Z
    goto :goto_0

    .line 79
    .end local v7    # "interop":Z
    :cond_1
    invoke-static {v7, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 80
    const/4 v7, 0x1

    .line 84
    .restart local v7    # "interop":Z
    :goto_0
    const/4 v8, 0x0

    .line 85
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v9, 0x0

    .line 87
    .local v9, "result":Z
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    move-object v8, v5

    .line 90
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 93
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ClipDescription;

    .line 96
    .local v3, "description":Landroid/content/ClipDescription;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 99
    .local v2, "linkUri":Landroid/net/Uri;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "flags":I
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 105
    .local v0, "opts":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 106
    new-instance v5, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v5, v4, v3, v2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 108
    .local v5, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v5, v1, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v11

    .line 111
    .end local v0    # "opts":Landroid/os/Bundle;
    .end local v1    # "flags":I
    .end local v2    # "linkUri":Landroid/net/Uri;
    .end local v3    # "description":Landroid/content/ClipDescription;
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v5    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :cond_2
    if-eqz v8, :cond_4

    .line 112
    if-eqz v9, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-virtual {v8, v6, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 115
    :cond_4
    return v9

    .line 111
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 112
    invoke-virtual {v8, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5
    throw v0

    .line 82
    .end local v7    # "interop":Z
    .end local v8    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v9    # "result":Z
    :cond_6
    return v6
.end method
