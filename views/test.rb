rps = ["rock","paper","scissors"]
random_rps = rps.at(rand(0..2))
puts random_rps

my_rand = "scissors"

if random_rps == "paper"
  puts "#{my_rand} is stronger than #{random_rps} - You won!"
elsif random_rps == "rock"
  puts "#{my_rand} is weaker than #{random_rps} - CPU won!"
elsif random_rps == "scissors"
  puts "#{my_rand} is equal to #{random_rps} - DRAW!"
end


# if random_rps == "scissors" && <%=rps %>== "rock" || random_rps == "rock" && <%=rps %>== "scissors"
#   puts "Rock wins!"
# elsif random_rps == "paper" && <%=rps %>== "rock" || random_rps == "rock" && <%=rps %>== "scissors"
#   puts "Paper wins!"
# elsif random_rps == "paper" && <%=rps %>== "scissors" || random_rps == "scissors" && <%=rps %>== "paper"
#   puts "Scissors wins!"
# end