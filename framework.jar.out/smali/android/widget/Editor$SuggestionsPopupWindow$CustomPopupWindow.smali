.class Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "defStyle"

    .prologue
    .line 2324
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2325
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2326
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 2330
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2332
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2335
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2337
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z
    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$1500(Landroid/widget/Editor$SuggestionsPopupWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2338
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/MiuiCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController;->show()V

    .line 2341
    :cond_0
    return-void
.end method