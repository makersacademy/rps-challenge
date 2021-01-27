class Game

  attr_reader :players
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(players:)
    @players = players
  end

  def result
    computer = RULES[@players[0].to_sym]
    player = @players[1].to_sym

    if @players[0] == @players[1]
      'draw'
    elsif computer != player
      'win'
    elsif computer == player
      'lose'
    end

  end

end
