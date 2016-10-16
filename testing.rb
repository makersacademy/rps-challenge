# rock!
def game(input)
  x = ["rock", "paper", "scissors"].sample

  if input.length == x.length
    puts "Draw!"
  elsif input.length < x.length
    puts "You win!"
  else
    puts "you lose"
  end
end
game("rock")
