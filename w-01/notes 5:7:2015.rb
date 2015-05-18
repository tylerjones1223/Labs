require 'pry'

def has_joiner?(word1, word2)
  word1[-1] == word2[0]
end

def is_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def is_funny_word?(word1, word2)
  is_anagram?(word1, word2) && has_joiner?(word1, word2)
end

def build_dictionary
  result = Hash.new([])
  file.open('english-dict.txt', 'r') do |f|
    f.each_line do |l|
      word = l.chomp
      result[word.length] += [word] if word.length > 3
    end
  end
  result
end
