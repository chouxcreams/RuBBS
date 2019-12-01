class BoardController < ApplicationController
  def index
    @boards = Board.all
  end
  def show
    @board = Board.find(board)
    @comments = Comment.where(board_id: params[:id])
  end
  def create
    Board.create(:title => params[:title])
    redirect_to index_path
  end
end
