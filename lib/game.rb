require_relative 'weapons'

class Game

@game

  include Weapons

  attr_reader :user, :god_weapon, :result

  def initialize(user)
    @user = user
    @result = nil
  end

  def determine_winner
    god_choose_weapon
    check_result
  end

  def self.create(user)
    @game = Game.new(user)
  end

  def self.instance
    @game
  end

  private
  def god_choose_weapon
    @god_weapon = Weapons::WEAPONS.sample
  end

  def user_win?
    beats?(@user.weapon, @god_weapon)
  end

  def check_result
    if user_win? == true
      @result = :win
    else
      @result = :lose
    end
  end
end
