.split("") < .chars

part 1

def encode(phrase, alpha)
    letters = phrase.split("")
    result = []
    letters.each do |letter|  #letter is not special   phrase.chars.each { |x| puts x }
      translated_letter = alpha[letter]                                # do          end
      result.push(translated_letter)
    end
    result.join("")
  end

part 2

def encode(phrase, alpha)
  result = []
  phrase.each_char do |letter|
    if alpha[letter.downcase]
      result << alpha[letter.downcase]
    else
      result << letter
    end
  end
  result.join('')
end

---------------

def test(stuff)
  stuff.do_things
end

def foo(x)
  result = x.bar.baz
  test(result)
end

my_num = 52
foo(my_num)

# What is a block? what is it for?
# sometimes we want a function that doesn't have a name
# sometimes we want to pass an argument as data

foo =  [1,2,3,4,5]
result = foo.map { |x| x * 20 }

#alternatively...
result = []
for i in foo do
  result << 1 * 20
end

#alternatively...

result = []
def multiplier(x)
  x * 20
end
