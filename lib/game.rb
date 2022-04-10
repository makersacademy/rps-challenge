
class Game

  RULES = { 
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }.freeze

  attr_reader :player1, :player2, :player_1_choice, :player_2_choice
  attr_writer :player_1_choice, :player_2_choice

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def result
    return :draw if @player_1_choice == @player_2_choice
    RULES[@player_1_choice] == @player_2_choice ? :player_1_win : :player_2_win
  end
end
