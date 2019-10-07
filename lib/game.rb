require_relative 'player'

class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def winner(player_1, player_2)
    if player_1 == "Rock"
      return "Player" if player_2 == "Scissors"
      return "Robot" if player_2 == "Paper"
      return "Draw" if player_2 == "Rock"
    elsif player_1 == "Paper"
      return "Player" if player_2 == "Rock"
      return "Robot" if player_2 == "Scissors"
      return "Draw" if player_2 == "Paper"
    elsif player_1 == "Scissors"
      return "Player" if player_2 == "Paper"
      return "Robot" if player_2 == "Rock"
      return "Draw" if player_2 == "Scissors"
    end
  end

end
