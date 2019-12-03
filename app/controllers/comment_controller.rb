class CommentController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    @board = Board.find(@comment.board_id)
  end
  def reply
    if params[:name] == ""
      name = "名無し"
    else
      name = params[:name]
    end
    if params[:body] != ""
      Comment.create(:body => params[:body], :board_id => params[:board_id], :name => name, :reply_to => params[:id])
      Board.increment_counter(:comments_count, params[:board_id], touch:true)
    end
    redirect_to comment_show_path(params[:id])
  end
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy()
    Board.decrement_counter(:comments_count, params[:board_id], touch:true)
    redirect_to show_path(params[:board_id])
  end
end
