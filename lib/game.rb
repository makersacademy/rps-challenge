require './game_rules'

class Game
  attr_reader :computer_move, :wins, :players

  def self.store(instance)
    @instance = instance
  end

  def self.show
    @instance
  end

  def initialize(players)
    @rules = rules
    @wins = 0
    @players = players
  end

  def play(user_move)
    if user_move.length == 1
      @computer_move = random_move
      verdict = @rules[user_move[0].to_sym][@computer_move][:verdict]
      phrase = @rules[user_move[0].to_sym][@computer_move][:phrase]
      count_wins if verdict == 'won'
      "Your #{user_move[0]} #{phrase} computer's #{@computer_move}!"
    else
      phrase = @rules[user_move[0].to_sym][user_move[1].to_sym][:phrase]
      "#{@players[0]}'s #{user_move[0]} #{phrase} #{@players[1]}'s #{user_move[1]}!"
    end
  end

  def self.random_move
    [:rock, :paper, :scissors, :spock, :lizard].sample
  end

  def reset
    @wins = 0
  end

  private

  def count_wins
    @wins += 1
  end

  def random_move
    Game.random_move
  end

end
