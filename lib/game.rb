class Game
  require_relative './player.rb'
  attr_reader :player1, :player2, :player_choices

  RULES = [
    { rock: :scissors },
    { paper: :rock },
    { scissors: :paper }               
  ]
  
  def initialize(player1:, player2: nil)
    @player1 = player1
    @player2 = player2 || Player.new()
    @player_choices = {}
  end
  
  def return_winner
    return player1.name if choice_wins?
    player2.name
  end

  private

  def choice_wins?
    @player_choices[@player1.choice] = @player2.choice
    RULES.include?(@player_choices)
  end 

end