class CommentController < ApplicationController
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy()
    redirect_to show_path(params[:board_id])
  end
end
