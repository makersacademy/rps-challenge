require './game_rules'

class Game
  attr_reader :computer_move, :players

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
    user_move.length == 1 ? one_user_play(user_move) : two_user_play(user_move)
  end

  def self.random_move
    [:rock, :paper, :scissors, :spock, :lizard].sample
  end

  def reset
    @players[0].reset_score
    @players[1].reset_score if @players.length > 1
  end

  private

  def one_user_play(user_move)
    @computer_move = random_move
    @players[0].score_up if verdict(user_move) == 'won'
    "Your #{user_move[0]} #{phrase(user_move)} computer's #{@computer_move}!"
  end

  def two_user_play(user_move)
    @players[0].score_up if verdict(user_move) == 'won'
    @players[1].score_up if verdict(user_move) == 'lost'
    "#{@players[0].name}'s #{user_move[0]} #{phrase(user_move)} #{@players[1].name}'s #{user_move[1]}!"
  end

  def phrase(user_move)
    if user_move.length == 1
      @rules[user_move[0].to_sym][@computer_move][:phrase]
    else
      @rules[user_move[0].to_sym][user_move[1].to_sym][:phrase]
    end
  end

  def verdict(user_move)
    if user_move.length == 1
      @rules[user_move[0].to_sym][@computer_move][:verdict]
    else
      @rules[user_move[0].to_sym][user_move[1].to_sym][:verdict]
    end
  end

  def random_move
    Game.random_move
  end

end
