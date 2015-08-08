
  choice = ['rock', 'paper', 'scissors']
  cpu_move = choice.sample
  my_move = gets.chomp

  while choice.include?(my_move) == false
    puts 'invalid choice'
    my_move = gets.chomp
  end
  
  puts "computer used #{cpu_move}!"

  case
  when (cpu_move == 'rock' && my_move == 'scissors') || (cpu_move == 'scissors' && my_move == 'paper') || (cpu_move == 'paper' && my_move == 'rock')
    puts "computer wins!"
  when my_move == cpu_move
    puts "draw!"
  else
    puts "player wins!"
  end
