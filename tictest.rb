require 'minitest/autorun'

require './tictactoev2/'

class Tictest < MiniTest::Test

  def test_draw_win_dif
    Input.new
    assert win?(@table) != draw?(@table)
  end

end
