require './lib/player'
require 'byebug'

class Game

  # GAME_RULES = {
  #           rock: {rock: :draw, paper: :lose, scissors: :win},
  #           paper: {rock: :win, paper: :draw, scissors: :lose},
  #           scissors: {rock: :lose, paper: :win, scissors: :draw}
  #         }
  # WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player1, :game_points, :player_weapon, :computer_weapon, :round_result

  def self.create_game(player1, player_klass = Player)
    @player_klass = player_klass
    @game = Game.new(@player_klass.new(player1))
  end

  def self.instance_of_game
    @game
  end

  def initialize(player1)
    @player1 = player1
    @game_points = 0
  end

  def set_points(points)
    @game_points = points
  end

  def player_weapon(choice)
    @player1.weapon
  end

  def play_round(player1_weapon, player2_weapon = computer_choice)
    @round_result = nil
    if @player_weapon == @computer_weapon
      @round_result = :tie
    elsif @player_weapon == :paper && @computer_weapon == :rock
      @round_result = :win
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      @round_result = :lose
    elsif @player_weapon == :rock && @computer_weapon == :paper
      @round_result = :lose
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      @round_result = :win
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      @round_result = :win
    end
    @round_result
  end

end
