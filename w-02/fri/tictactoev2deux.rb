require './tictactoev2'

class Input


    WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
            [0, 3, 6], [1, 4, 7], [2, 5, 8],
            [0, 4, 8], [2, 4, 6]]

  def initialize
    @table = (1..9).to_a
    @player1 = []
    @player2 = []
    @board = []
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
    end

    def win?(board)
      WINS.any? do |x, y, z|
      board[x] == board[y] && board[y] == board[z]
      end
    end

    def draw?(board)
      board.all? { |x| x.is_a? String }
    end

    def play_again?
      puts "Would you like to play again? Y/N"
      input = gets.chomp.upcase
      if input == "Y"
        Input.new
      elsif input == "N"
        puts "Goodbye"
      end
    end

    def game_over?(board)
      win?(board) || draw?(board)
      if win?(board) == true
        puts "Winner"
        play_again?
      elsif draw?(board) == true
        puts "Draw"
        play_again?
      end
    end

    def hum_v
      until game_over?(@table)
        @board = Board.new(@table)
        player1
          unless game_over?(@table)
            @board = Board.new(@table)
            player2
          end
        end
        @board = Board.new(@table)
    end

    def hum_c
      until game_over?(@table)
        @board = Board.new(@table)
        player1
          unless game_over?(@table)
            @board = Board.new(@table)
            cpu2
          end
        end
        @board = Board.new(@table)
    end

    def cpu_c
      until game_over?(@table)
        @board = Board.new(@table)
        cpu1
        unless game_over?(@table)
          @board = Board.new(@table)
          cpu2
        end
      end
        @board = Board.new(@table)
    end

    def cpu1
      puts 'player 1 turn'
      f = @table.index(@table.sample)
      until @table.include?(f)
        f = @table.index(@table.sample)
      end
      @table.insert(f, @player1)
      @table.delete(f)
    end

    def cpu2
      puts 'player 2 turn'
      f = @table.index(@table.sample)
      until @table.include?(f)
        f = @table.index(@table.sample)
      end
      @table.insert(f, @player2)
      @table.delete(f)
    end

    def player1()
      puts 'player 1 turn'
      user1_input = gets.chomp.to_s
        until user1_input =~ /^[1-9]$/
          puts 'pick 1-9'
          user1_input = gets.chomp.to_s
        end
        if user1_input == "1"
          @table[0] = @player1
        elsif user1_input == "2"
          @table[1] = @player1
        elsif user1_input == "3"
          @table[2] = @player1
        elsif user1_input == "4"
          @table[3] = @player1
        elsif user1_input == "5"
          @table[4] = @player1
        elsif user1_input == "6"
          @table[5] = @player1
        elsif user1_input == "7"
          @table[6] = @player1
        elsif user1_input == "8"
          @table[7] = @player1
        elsif user1_input == "9"
          @table[8] = @player1
        end
    end

    def player2()
      puts 'player 2 turn'
      user2_input = gets.chomp.to_s
        until user2_input =~ /^[1-9]$/
          puts 'pick 1-9'
          user2_input = gets.chomp.to_s
        end
        if user2_input == "1"
          @table[0] = @player2
        elsif user2_input == "2"
          @table[1] = @player2
        elsif user2_input == "3"
          @table[2] = @player2
        elsif user2_input == "4"
          @table[3] = @player2
        elsif user2_input == "5"
          @table[4] = @player2
        elsif user2_input == "6"
          @table[5] = @player2
        elsif user2_input == "7"
          @table[6] = @player2
        elsif user2_input == "8"
          @table[7] = @player2
        elsif user2_input == "9"
          @table[8] = @player2
        end
    end
end

binding.pry
