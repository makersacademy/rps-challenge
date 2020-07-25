require_relative './user'

class Game
  attr_reader :game

  def initialize(user_1, user_2)
    @users = [@user_1 = user_1, @user_2 = user_2]
  end

  def user_1
    @user_1
  end

  def user_2
    @user_2
  end

  def self.create(user_1, user_2)
    @game = Game.new(user_1, user_2)
  end

  def self.play
    @game
  end

end
