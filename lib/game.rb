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
    return "It's a draw!" if a_draw?(player_choice, computer_choice)
    return "#{player.name} wins!" if player_wins?(player_choice, computer_choice)
    return "You lose, #{player.name}!" if comp_wins?(player_choice, computer_choice)
  end

  private

  def a_draw?(player_choice, computer_choice)
    player_choice == computer_choice
  end

  def player_wins?(player_choice, computer_choice)
    computer_choice == defeat[player_choice]
  end

  def comp_wins?(player_choice, computer_choice)
    player_choice == defeat[computer_choice]
  end

end
