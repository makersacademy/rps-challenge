require_relative 'player'
class Game

  attr_reader :player, :choice

  WINS = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def decision(choice)
    @choice = choice
  end

  def outcome(computer_choice = their_choice)
    choice_sym = @choice.downcase.to_sym
    return 'Won' if WINS[choice_sym] == computer_choice
    return 'Drew' if choice_sym == computer_choice
    return 'Lost' if WINS[computer_choice] == choice_sym
  end

  private

  def their_choice
    [:rock, :paper, :scissors].sample
  end
end
