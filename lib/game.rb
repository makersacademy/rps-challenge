class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @rules = { "rock" => "scissors",
              "paper" => "rock",
              "scissors" => "paper" }
  end

  def result(player_choice, choice = computer.choice)
    return "Draw" if player_choice == choice 
    return "Won" if @rules[player_choice] == choice 
    return "Lost" if @rules[choice] == player_choice
  end
end