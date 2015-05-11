require 'pry'

WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]]

@table = [1, 2, 3, 4, 5, 6, 7, 8, 9]

@xo = ['X', 'O']

@player1 = []
@player2 = []

def tictoe(table)
    puts "
     #{table[0]}  |  #{table[1]}  |  #{table[2]}
     #{table[3]}  |  #{table[4]}  |  #{table[5]}
     #{table[6]}  |  #{table[7]}  |  #{table[8]}
    "
end

def win?(board)
  WINS.any? do |x, y, z|
    board[x] == board[y] && board[y] == board[z]
  end
end

def draw?(board)
  board.all? { |x| x.is_a? String }
end

def game_over?(board)
  win?(board) || draw?(board)
end

def user1_choice(options)
  puts 'what team player 1?'
  xoro = gets.chomp.upcase
  until xoro =~ /^[xo]$/i
    puts 'pick an X or O'
    xoro = gets.chomp.upcase
  end
    if xoro == "X"
      @player1 = options[0]
      @player2 = options[1]
      puts 'player 2 is O.'
    elsif xoro == "O"
      @player1 = options[1]
      @player2 = options[0]
      puts 'player 2 is X.'
    end
end


def prompt(options)
  @table = (1 .. 9).to_a
  user1_team = user1_choice(@xo)
  if user1_team == options[0]
    options[1]
  else user1_team == options[1]
    options[0]
  end
  puts "are you ready for the game? (Y/N)"
  answer = gets.chomp.upcase
  if answer == "Y"
    answers1
  elsif answer == "N"
    puts "come again"
  end
end

def answers2()
user2_input = gets.chomp.to_s
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
  answers1
end

def answers1()
tictoe(@table)
puts 'player 1 turn'
user1_input = gets.chomp.to_s
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
  until game_over?(@table)
  tictoe(@table)
  puts 'player 2 turn'
  answers2
end
tictoe(@table)
end

prompt(@xo)

binding.pry
