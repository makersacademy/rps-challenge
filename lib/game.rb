require '/Users/Dori/Projects/homework/week3/rps-challenge/lib/person.rb'
require '/Users/Dori/Projects/homework/week3/rps-challenge/lib/computer.rb'
class Rps
attr_reader :player_input, :computer_input

  def initialize(player_input = Person.new(:choice), computer_input= Computer.new)
    @player_input = player_input
    @computer_input = computer_input
  end

def compare_choices(player_input, computer_input)
  while true do
    if @player_input == rock && @computer_input == scissors
    puts "Player chose rock. \nComputer chose scissors."
    puts "Rock beats scissors, player wins the round."
    break

  elsif @player_input == scissors && @computer_input == paper
    puts "Player chose scissors. \nComputer chose paper."
    puts "Scissors beat paper, player wins the round."
    break

  elsif @player_input == paper && @computer_input == rock
    puts "Player chose paper. \nComputer chose rock"
    puts "Paper beats rock, player wins the round."
    break

  elsif @computer_input == rock && @player_input == scissors
    puts "Player chose scissors. \nComputer chose rock."
    puts "Rock beats scissos, Computer wins the round"
    break

  elsif @computer_input == scissors && @player_input == paper
    puts "Player chose paper. \nComputer chose scissors."
    puts "Scissors beats paper, Computer wins the round"
    break

  elsif @computer_input == paper && @player_input == rock
    puts "Player chose rock. \nComputer chose paper."
    puts "Paper beats rock, Computer wins the round"
    break

  elsif @player_input == rock && @computer_input == rock ||
        @player_input == paper && @computer_input == paper ||
        @player_input == scissors && @computer_input == scissors
    puts "Player chose rock. \nComputer chose rock."
    puts "Tie, choose again"
  end
end
end
end
