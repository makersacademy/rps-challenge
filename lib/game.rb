class Game
  attr_reader :player, :computer_choice

  def initialize(player)
    @player = player
  end

  def play(player_choice)
    computer_picks
    if player_choice == :rock && computer_choice == :scissors
      player.wins
    elsif player_choice == :paper && computer_choice == :rock
      player.wins
    elsif player_choice == :scissors && computer_choice == :paper
      player.wins
    elsif player_choice == computer_choice
      player.draws
    end
  end

  private

  def computer_picks
    @computer_choice = [:rock, :paper, :scissors].sample
  end

end
