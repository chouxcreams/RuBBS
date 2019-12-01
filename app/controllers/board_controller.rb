class BoardController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(params[:id])
    @comments = Comment.where(board_id: params[:id])
  end
  def create
    Board.create(:title => params[:title])
    redirect_to index_path
  end
  def comment
    if params[:name] == ""
      name = "名無し"
    else
      name = params[:name]
    end
    Comment.create(:body => params[:body], :board_id => params[:id], :name => name)
    redirect_to show_path(params[:id])
  end
  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to index_path
  end
end
