require 'minitest/autorun'

require './tictactoev2/'

class Tictest < MiniTest::Test

  def test_draw_win_dif
    assert win?(@table) != draw?(@table)
  end

  def test_player
    assert_equal player1, 'X'
    assert_equal player2, 'O'
  end

  def test_input
    assert_equal input, '1'
    hum_v
  end

end
