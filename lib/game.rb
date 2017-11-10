class Game

  attr_reader :computer_move, :wins

  def self.store(instance)
    @instance = instance
  end

  def self.show
    @instance
  end

  def initialize
    @move = [:rock, :paper, :scissors].sample
    @rules = {
      rock: {rock: 'tied', paper: 'lost', scissors: 'won'},
      paper: {rock: 'won', paper: 'tied', scissors: 'lost'},
      scissors: {rock: 'lost', paper: 'won', scissors: 'tied'}
    }
    @wins = 0
  end

  def play(user_move)
    @computer_move = random_move
    verdict = @rules[user_move.to_sym][@computer_move]
    count_wins if verdict == 'won'
    "You #{verdict}!"
  end

  private

  def count_wins
    @wins += 1
  end

  def random_move
    Game.random_move
  end

  def self.random_move
    [:rock, :paper, :scissors].sample
  end

end