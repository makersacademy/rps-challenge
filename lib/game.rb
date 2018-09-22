class Game
  require_relative './player.rb'
  require_relative './weapons.rb'
  attr_reader :player1, :player2, :player_choices

  WINNING_PAIRS = [
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
    @player2.computer_move if @player2.computer?
    return "Draw" if @player1.choice == @player2.choice
    return player1.name if choice_wins?
    @player2.name
  end

  private

  def choice_wins?
    @player_choices[@player1.choice] = @player2.choice
    WINNING_PAIRS.include?(@player_choices)
  end 

end