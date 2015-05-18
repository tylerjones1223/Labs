require 'pry'
require 'set'

word_list = ["foo", "bar",
             "fuf", "cannonball"]
turn_count = 7

guesses = Set.new

answer = word_list.sample

def intermediate_word(answer, guesses)
  answer.each_char do |letter|
    if guesses.include?(letter)
      print letter
    else print "-"
    end
  end
  puts
end

def word_complete?(answer, guesses)
  word.chars.to_set.subset?(guesses)
end

def user_guess()
  puts "guess"
  guess = gets.chomp
end

def hangman_game(answer, guesses)
  user_input = user_guess
  guesses.add(user_input)
  intermediate_word(answer, guesses)
  if guesses == answers
    puts "you win"
  end
end

binding.pry







# def user_guess(x)
#   user_input = ()
#   x = gets.chomp
#   x << user_input
#   user_input.chars.add(guesses)
# end




# guesses.add(user_input)
#
# user_input = gets.chomp
#
# intermediate_word(answer, user_input)
# user_input.chars.to_a.to_set
