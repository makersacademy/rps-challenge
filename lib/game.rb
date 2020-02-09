class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player}.first
  end
  

  # def winner(player_1, player_2)
  #   if player_1.option == scissors && player_2.option == paper ? player_1 wins : player_2 wins
  #   if player_1.option == rock && player_2.option == paper ? player_2 wins : player_1 wins 
  #   if player_1.option == scissors && player_2.option == rock ? player_1 wins : player_2 wins
  #   if player_1.option == player_2.option
  #     return 
  #     "It's a DRAW!"
  # end
  
end
