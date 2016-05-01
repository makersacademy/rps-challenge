class Game

  def self.create player_name, rules_class = RockPaperScissorsRules
    @game = Game.new player_name, rules_class
  end

  def self.last
    @game
  end

  def initialize player_name, rules_class = RockPaperScissorsRules
    @player_name = player_name
    @mode = rules_class
    @rules = rules_class.new
  end

  attr_reader :player_move, :opponent_move, :mode

  def player_name
    @player_name.clone
  end

  def player_move= move
    @player_move = move.to_sym
  end

  def set_opponent_move
    @opponent_move = @rules.moves.sample
  end

  def result
    @rules.result player_move, opponent_move
  end

end

