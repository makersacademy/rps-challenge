require './lib/player'
require 'byebug'

class Game

  attr_reader :player1, :player2, :game_points, :tie, :winner

  def self.create_game(player1, player2, game_points, player_klass = Player)
    @player_klass = player_klass
    @game = Game.new(@player_klass.new(player1), @player_klass.new(player2), game_points)
  end

  def self.instance_of_game
    @game
  end

  def initialize(player1, player2, game_points)
    @player1 = player1
    @player2 = player2
    @game_points = game_points
    @winner = nil
    @tie = false
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

  def rps(player1, player2)
    if player1 == player2
      tie_round
    elsif player1 == :Rock
      p1_wins if player2 == :Scissors
      p2_wins if player2 == :Paper
    elsif player1 == :Paper
      p1_wins if player2 == :Rock
      p2_wins if player2 == :Scissors
    elsif player1 == :Scissors
      p1_wins if player2 == :Paper
      p2_wins if player2 == :Rock
    end
  end

  private

    def tie_round
      @tie = true
    end

    def p1_wins
      @winner = @player1.name
    end

    def p2_wins
      @winner = @player2.name
    end
end
