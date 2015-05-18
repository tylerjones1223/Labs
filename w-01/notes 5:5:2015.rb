#destutter ----------
#seq should be an array
def destutter2(seq)    #seq is a variable name
    result = []
    last = nil

    seq.each do |item|       #.each do for each item in the array
# =>  unless item == last also works

      if item != last        # if item does not equal last item
        result.push(item)    #what does .push mean? adds item to the end of and array.
      end                    #  result << item = result.push(item)
      last = item
    end
    result
  end


# => notes bruv------------------------------------------------
foo = [1,2,3,4]
puts "foo is: #{foo}" #another way of using puts
# => foo is: [1,2,3,4]

x = 'doges'
puts "I like #{x} and foo is: #{foo}"
# => I like doges and foo is: [1,2,3,4]

puts '#{foo} is the value of foo\n\n'
# => #{foo} is the value of foo\n\n ----because of '' vs ""

#hash tables called dictionaries or maps in other languages
#look things up by name

foo[0]
#1
foo[0] = 27
#27
foo
#[27,2,3,4]

#hash table = look up by name surrounded by curly braces

example_hash = {
  brit: "likes dogs",
  tim: "likes whiskey",
  jd: "likes dark souls",
  jo: "likes ping pong"
}

# => .count how many items in hash

#[0]=.first

# names on the right are keys and names on the left are values
#'brit:' can only be used in the hash, ':brit' calls the hash always
# => hashes are {}
# => arrays are []

-------------------
#example: print_hash({brit: :dogs, tim: :whiskey, jo: :ping_pong})
#example: print_hash(toy)
#prints the following


#+================+         ISHHHH
#|  key  | value |
#|------|--------|
#| brit |  dogs  |
----

def max_length(names)
  names.map { |name| name.length }.max
end


def print_hash(hash)
  longest_key = max_length(hash.keys)
  longest_val = max_length(hash.values)
end

----
def longest_key(hash)
  hash.keys.map { |name| name.length}.max
end

def longest_value(hash)
  hash.values.map { |name| name.length}.max
end

# => .keys get keys back as array, .values get values back as an array
# => ruby_doc.org /// hash

toys.keys.map {|x| x.length}
#[4,4,9]
toys.keys.map {|x| x.length}.max
#9

# => how to get the longest key
#option 1
#max = -1
toy.keys.each do |key|
 max = key.length if key.length > max
end

#shorter way
max = key.length if key.length > max
end

#option 2
#the max method only works on arrays like [3,4,5,2,2]
result = []
toy.keys.each do |key|
  result << key.length
end
#[4,4,9]
result.max
#9

#each always hands back what it started with

#option 3
#use max instead of manually building a result with each
toy.keys.map { |key| key.length }.max

#map hands back what it computes/results
