require_relative 'player'

class Game

attr_reader :player1, :player2, :winning_combo

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @winning_combo = [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]
  end

  def win?
    @winning_combo.include?([@player1.choice, @player2.choice])
  end

end
