require_relative 'player'

class Game

  attr_reader :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
   @player = player
   @game_options = [:Rock, :Paper, :Scissors]
   @winning_combos = [[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Scissors]]
  end

  def player_choice
    @player_choice
  end

  def player_choice=(choice)
    fail "Not possible option" unless @game_options.include? choice
    @player_choice = choice.to_sym
  end

  def computer_choice
    @computer_choice = @game_options.sample
  end

  def player_wins?
    fail "No winner" if draw?
    @winning_combos.include? @outcome
  end

  def outcome
    @outcome = [@player_choice, @computer_choice]
  end

  def draw?
    outcome[0] == outcome[1]
  end

end
