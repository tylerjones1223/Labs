require 'pry'

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

class Input

  def initialize
    @table = (1..9).to_a
    @player1 = []
    @player2 = []
    prompt
  end

  def prompt
    puts 'what team player 1?'
    xoro = gets.chomp.upcase
      until xoro =~ /^[xo]$/i
        puts 'pick an X or O'
        xoro = gets.chomp.upcase
      end
        if xoro == "X"
          @player1 = "X"
          @player2 = "O"
          puts 'player 2 is O.'
        elsif xoro == "O"
          @player1 = "O"
          @player2 = "X"
          puts 'player 2 is X.'
        end
        opponent
  end

  def opponent
      puts '
      1. Human vs. Human
      2. Human vs. CPU
      3. CPU vs CPU
            '
      input = gets.chomp
        until input =~ /^[1-3]$/
          puts 'Pick a number between 1-3!'
          input = gets.chomp
        end
          if input == '1'
            hum_v
          elsif input == '2'
            hum_c
          elsif input == '3'
            cpu_c
      end
    @board = Board.new(@table)
  end

    def hum_v

    end

    def hum_c
      #human vs cpu
    end

    def cpu_c
      #cpu vs cpu
    end

end



binding.pry
