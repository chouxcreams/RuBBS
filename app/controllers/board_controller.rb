class BoardController < ApplicationController
  def index
    @boards = Board.all
  end
end
