class Game

  def self.create player_name, rules_class = RockPaperScissorsRules
    @game = Game.new player_name, rules_class
  end

  def self.last
    @game
  end

  def initialize player_name, rules_class = RockPaperScissorsRules, opponent_class = Computer
    @player_name = player_name
    @mode = rules_class
    @rules = rules_class.new
    @opponent = opponent_class.new @rules
  end

  attr_reader :player_move, :mode

  def player_name
    @player_name.clone
  end

  def player_move= move
    @player_move = move.to_sym
  end

  def opponent_move
    @opponent.move
  end

  def result
    @rules.result player_move, opponent_move
  end

end

