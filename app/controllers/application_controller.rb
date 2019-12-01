class ApplicationController < ActionController::Base
  def index
  end
  def test
    Board.create(:title => 'プロ野球について')
  end
  def visualize
    @boards = Board.all
  end
end
