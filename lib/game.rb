class Game 
  attr_reader :player_name
  def initialize(player_name)
    @player_name = player_name
  end 

  def computer_selection 
    return ['rock', 'paper', 'scissors'].sample
  end
  
  def calculate_winner(player_input, computer_input)
    if player_input == computer_input 
      return "It was a draw"
    elsif player_input == "rock" && computer_input == "scissors"
      return "#{@player_name} Wins"
    elsif player_input == "paper" && computer_input == "rock"
      return "#{@player_name} Wins"
    elsif player_input == "scissors" && computer_input == "paper"
      return "#{@player_name} Wins"
    else 
      return "Computer Wins"
    end
  end 
end
