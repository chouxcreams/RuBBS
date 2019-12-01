class Api::BoardController < ApplicationController
  def index
    boards = Board.all
    boards_list = []
    boards.each do |board|
      board_list = {
          id: board.id,
          title: board.title,
          created_at: board.created_at,
          updated_at: board.updated_at
      }
      boards_list.append(board_list)
    end
    render :json => boards_list
  end
  def create
    Board.create(:title => params[:title])
  end
  def destroy
    board = Board.find(params[:id])
    board.destroy
  end
end
