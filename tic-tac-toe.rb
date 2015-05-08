require 'pry'

table1 = [1, 2, 3]
table2 = [1, 2, 3]
table3 = [1, 2, 3]

@xo = ['X', 'O']

@x = []
@o = []

def tictoe()
  puts "123"
  puts "345"
  puts "789"
end

def user1_choice(options)
  puts 'what team player 1?'
  xoro = gets.chomp.upcase
  if xoro == "X"
    options[0]
  else xoro == "O"
    options[1]
  end
end

# def autopick(options)
#   user1_team = user1_choice(@xo)
#   if user1_team == options[0]
#     user2_team = options[1]
#   else user1_team == options[1]
#     user2_team = options[0]
#   end
# end

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
    tictoe()
  elsif answer == "N"
    puts "come again"
  end
end







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
end

# tictoe(xo)

binding.pry
