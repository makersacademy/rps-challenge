def random_string(length)
  letters = "abcdefghijklmnopqrstuvwxyz"
  word = Array[]
  length.times do
    r = rand 0..25
    letter = letters[r]
    word.push(letter)
  end
  result = word.join('')
end

3.upto(10) do |i|
  puts random_string(i)
  puts random_string(i)
end
