class Game

  attr_accessor :players 
  
  def initialize
    @players = []
    @rules = {rock: :paper, paper: :scissors, scissors: :rock}
    @result = @rules.keys
  end

  def add_player(player)
    @players << player
  end

  def player_count
    players.count
  end

  def winner?(player1, player2)
  player1.choice == player2.choice ? "It's a draw!" :
  player1.choice == @rules[player2.choice] ? "Player One has won!" :
  "Player Two has won!"
end

  # def winner?(player1, player2)
  #   if player1.choice == player2.choice
  #     "It's a draw!"
  #   elsif player1.choice == @rules[player2.choice]
  #     "Player One has won!"
  #   else
  #     "Player Two has won!"
  #   end
  # end

end