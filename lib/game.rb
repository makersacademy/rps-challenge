require './game_rules'

class Game

  attr_reader :computer_move, :wins

  def self.store(instance)
    @instance = instance
  end

  def self.show
    @instance
  end

  def initialize
    @rules = rules
    @wins = 0
  end

  def play(user_move)
    @computer_move = random_move
    verdict = @rules[user_move.to_sym][@computer_move][:verdict]
    phrase = @rules[user_move.to_sym][@computer_move][:phrase]
    count_wins if verdict == 'won'
    "Your #{user_move} #{phrase} computer's #{@computer_move}!"
  end

  def self.random_move
    [:rock, :paper, :scissors, :spock, :lizard].sample
  end
  
  private

  def count_wins
    @wins += 1
  end

  def random_move
    Game.random_move
  end

end
