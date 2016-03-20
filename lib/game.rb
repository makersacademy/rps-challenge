require_relative 'player'

class Game

  @game = nil

  def self.start_game(player_one, player_two)
    @game = Game.new(Player.new(player_one), Player.new(player_two))
  end

  def self.game
    @game
  end

  attr_reader :player1, :player2, :winner, :draw, :singleplayer

  def initialize(player_one, player_two)
    @player1 = player_one
    @player2 = player_two
    @winner = nil
    @draw = false
    player2_name == "Computer" ? @singleplayer = true : @singleplayer = false
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def player1_weapon
    @player1.weapon
  end

  def player2_weapon
    @player2.weapon
  end

  def multiplayer?
    @singleplayer != true
  end

  def rps(p1, p2)
    if p1 == p2
      draw_game
    elsif p1 == "Paper"
      player1_wins if p2 == "Rock"
      player2_wins if p2 == "Scissors"
    elsif p1 == "Scissors"
      player1_wins if p2 == "Paper"
      player2_wins if p2 == "Rock"
    elsif p1 == "Rock"
      player1_wins if p2 == "Scissors"
      player2_wins if p2 == "Paper"
    end
  end

  private

  def player1_wins
    @winner = @player1.name
  end

  def player2_wins
    @winner = @player2.name
  end

  def draw_game
    @draw = true
  end

end
