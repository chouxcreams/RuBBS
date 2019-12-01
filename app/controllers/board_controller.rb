class BoardController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
    @comments = Comment.where(board_id: params[:id])
  end
  def create
    if params[:title] != ""
      Board.create(:title => params[:title])
    end
    redirect_to index_path
  end
  def comment
    if params[:name] == ""
      name = "名無し"
    else
      name = params[:name]
    end
    if params[:body] != ""
      Comment.create(:body => params[:body], :board_id => params[:id], :name => name)
    end
    redirect_to show_path(params[:id])
  end
  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to index_path
  end
end
