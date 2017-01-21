class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def play(player_choice)
    if player_choice == :rock && computer_choice == :scissors
      player.win
    elsif player_choice == :paper && computer_choice == :rock
      player.win
    elsif player_choice == :scissors && computer_choice == :paper
      player.win
    else
      player.draw
    end
  end

  private

  def computer_choice
    [:rock, :paper, :scissors].sample
  end

end
