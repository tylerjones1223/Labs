#Number Guessing Game
x = rand(1..100)
#just put 10 to make things faster
#obviously know it should be a hunnit
  puts "First Guess, son."
    loop do
    y = gets.chomp.to_i
      if y == x
        puts "You Is Right, pleb."
      break
      else
        if x > y
          puts "Try a bigger number, bruv."
        else
          puts "Try a smaller number, homes."
        end
      end
    end
