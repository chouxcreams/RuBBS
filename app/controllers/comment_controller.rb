class CommentController < ApplicationController
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy()
    Board.decrement_counter(:comments_count, params[:board_id], touch:true)
    redirect_to show_path(params[:board_id])
  end
end
