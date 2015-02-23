computer = 'rsp'[rand(3)].chr

player = $stdin.gets.chomp.downcase

case [player, computer]

when ['p', 'r'], ['s', 'p'], ['r', 's']
  puts '\n\nYou win!'

when ['r', 'r'], ['p', 'p'], ['s', 's']

  puts '\n\nYou tied'

else

  puts '\n\nYou lose!'
end

puts 'The computer chose: #{computer.upcase}\n'

exit

    