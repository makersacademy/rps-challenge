require_relative "player"
require_relative "computer"

class Game

  attr_accessor :player, :defeat, :computer

  def initialize(player, computer)
    @player   =   player
    @computer =   computer
    @defeat   =   {rock: :scissors, paper: :rock, scissors: :paper}
  end

  def play(player_choice)
    player_choice = player.choose(player_choice.to_sym)
    computer_choice = computer.choose
    return "It is a draw!" if player_choice == computer_choice
    return "You lose! #{player.name}: #{player_choice} < Computer: #{computer_choice}" if player_choice == defeat[computer_choice]
    return "#{player.name} wins! #{player.name}: #{player_choice} > Computer: #{computer_choice}" if computer_choice == defeat[player_choice]
  end

end
