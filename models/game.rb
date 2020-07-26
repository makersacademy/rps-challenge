require_relative './user'

class Game
  attr_reader :game


  WINNING_MOVES = { 'Rock' => %w[Scissors Lizard],
                    'Paper' => %w[Rock Spock],
                    'Scissors' => %w[Paper Lizard],
                    'Spock' => %w[Scissors Rock],
                    'Lizard' => %w[Paper Spock] }

  def initialize(user_1, user_2)
    @users = [@user_1 = user_1, @user_2 = user_2]
    @moves = []
  end

  def user_1
    @user_1
  end

  def user_2
    @user_2
  end

  def current_user
    @users[0]
  end

  def rotate
    @users.rotate!
  end

  def self.create(user_1, user_2)
    @game = Game.new(user_1, user_2)
  end

  def self.play
    @game
  end

  def tie?
    user_1.move == user_2.move && (!user_1.move.nil? && !user_2.move.nil?)
  end

  def user_1_win?
    return unless user_1.move && user_2.move

    WINNING_MOVES[user_1.move].include?(user_2.move)
  end

  def user_2_win?
    return unless user_1.move && user_2.move

    WINNING_MOVES[user_2.move].include?(user_1.move)
  end

  def reset_player_moves
    return unless user_1.move && user_2.move

    user_1.reset
    user_2.reset
  end

end
