my_alpha = {
  a: 'alpha',
  b: 'bravo',
  c: 'charlie',
  d: 'delta',
  e: 'echo',
  f: 'foxtrot',
  g: 'golf',
  h: 'hotel',
  i: 'india',
  j: 'juliet',
  k: 'kilo',
  l: 'lima',
  m: 'mike',
  n: 'november',
  o: 'oscar',
  p: 'papa',
  q: 'quebec',
  r: 'romeo',
  s: 'sierra',
  t: 'tango',
  u: 'uniform',
  v: 'victor',
  w: 'whiskey',
  x: 'xray',
  y: 'yankee',
  z: 'zulu'
}

my_input = "dogs are cool"

def encode(alphabet, message)
  message.each_char do |letter|
    puts alphabet[letter.to_sym]   # Hopefully this prints your letter. If not, you may need to call "letter.to_sym" or similar.
  end
end

#encode(my_alpha, my_input)
