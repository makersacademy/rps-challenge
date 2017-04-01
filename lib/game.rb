class Game



  def play_game
  if choice == computer_choice
    puts "You #{outcome[:tie]}"
  elsif choice == "Rock" && computer_choice == "Scissors"
    puts "You #{outcome[:win]}"
  elsif choice == "Paper" && computer_choice == "Rock"
    puts "You #{outcome[:win]}"
  elsif choice == "Scissors" && computer_choice == "Paper"
    puts "You #{outcome[:win]}"
  elsif choice == "Paper" && computer_choice == "Spock"
    puts "You #{outcome[:win]}"
  elsif choice == "Rock" && computer_choice == "Lizard"
    puts "You #{outcome[:win]}"
  elsif choice == "Scissors" && computer_choice == "Lizard"
    puts "You #{outcome[:win]}"
  elsif choice == "Spock" && computer_choice == "Rock"
    puts "You #{outcome[:win]}"
  elsif choice == "Spock" && computer_choice == "Scissors"
    puts "You #{outcome[:win]}"
  elsif choice == "Lizard" && computer_choice == "Paper"
    puts "You #{outcome[:win]}"
  elsif choice == "Lizard" && computer_choice == "Spock"
    puts "You #{outcome[:win]}"
  else
    puts "You #{outcome[:lose]}"
  end
end

end
