require 'pry'
require './tictactoev2deux'

WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]]

class Board
  def initialize(table)
    puts "
         #{table[0]}  |  #{table[1]}  |  #{table[2]}
         #{table[3]}  |  #{table[4]}  |  #{table[5]}
         #{table[6]}  |  #{table[7]}  |  #{table[8]}
        "
  end
end
