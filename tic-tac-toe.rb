require 'pry'

@table1 = [1, 2, 3]
@table2 = [4, 5, 6]
@table3 = [7, 8, 9]

@xo = ['X', 'O']

@player1 = []
@player2 = []

def tictoe()
  puts @table1.to_s
  puts @table2.to_s
  puts @table3.to_s
end

def user1_choice(options)
  puts 'what team player 1?'
  xoro = gets.chomp.upcase
  if xoro == "X"
    @player1 = options[0]
    @player2 = options[1]
    puts 'player 2 is O.'
  elsif xoro == "O"
    @player1 = options[1]
    @player2 = options[0]
    puts 'player 2 is X.'
  else
    puts 'must pick X or O.'
  end
end

def gamewinner()
  if @table1[0] == 'X' || 'O'
    puts 'game over'
  end
end

def game()
    answers1
end

def prompt(options)
  user1_team = user1_choice(@xo)
  if user1_team == options[0]
    options[1]
  else user1_team == options[1]
    options[0]
  end
  puts "are you ready for the game? (Y/N)"
  answer = gets.chomp.upcase
  if answer == "Y"
    game
  elsif answer == "N"
    puts "come again"
  end
end

def answers2()
user2_input = gets.chomp.to_s
  if user2_input == "1"
    @table1[0] = @player2
  elsif user2_input == "2"
    @table1[1] = @player2
  elsif user2_input == "3"
    @table1[2] = @player2
  elsif user2_input == "4"
    @table2[0] = @player2
  elsif user2_input == "5"
    @table2[1] = @player2
  elsif user2_input == "6"
    @table2[2] = @player2
  elsif user2_input == "7"
    @table3[0] = @player2
  elsif user2_input == "8"
    @table3[1] = @player2
  elsif user2_input == "9"
    @table3[2] = @player2
  end
  game
end

def answers1()
tictoe
puts 'player 1 turn'
user1_input = gets.chomp.to_s
  if user1_input == "1"
    @table1[0] = @player1
  elsif user1_input == "2"
    @table1[1] = @player1
  elsif user1_input == "3"
    @table1[2] = @player1
  elsif user1_input == "4"
    @table2[0] = @player1
  elsif user1_input == "5"
    @table2[1] = @player1
  elsif user1_input == "6"
    @table2[2] = @player1
  elsif user1_input == "7"
    @table3[0] = @player1
  elsif user1_input == "8"
    @table3[1] = @player1
  elsif user1_input == "9"
    @table3[2] = @player1
  end
  tictoe
  puts 'player 2 turn'
  answers2
end

def game_winner()
  if @table1 == ['X', 'X', 'X']
    puts "Winner X"
  elsif @table2 == ['X', 'X', 'X']
    puts "Winner X"
  elsif @table3 == ['X', 'X', 'X']
    puts "Winner X"
  end
end


game_winner
prompt(@xo)

binding.pry
# def autopick(options)
#   user1_team = user1_choice(@xo)
#   if user1_team == options[0]
#     user2_team = options[1]
#   else user1_team == options[1]
#     user2_team = options[0]
#   end
# end

  # line1 = [['X', 'O'], ['X', 'O'], ['X', 'O']]
  # line2 = [['X', 'O'], ['X', 'O'], ['X', 'O']]
  # line3 = [['X', 'O'], ['X', 'O'], ['X', 'O']]

  # one = [table1[0], xo[letter]]
  #
  # two = [table1[1], xo[letter]]
  #
  # three = [table1[2], xo[letter]]
  #
  # four = [table2[0], xo[letter]]
  #
  # five = [table2[1], xo[letter]]
  #
  # six = [table2[2], xo[letter]]
  #
  # seven = [table3[0], xo[letter]]
  #
  # eight = [table3[1], xo[letter]]
  #
  # nine = [table3[2], xo[letter]]

# tictoe(xo)
