require_relative 'game'

class Weapon

  attr_reader :choice, :won

  def self.return_weapon_one
    @weapon_one
  end

  def self.create_weapon_one(choice)
    @weapon_one = Weapon.new(choice)
  end

  def self.return_weapon_two
    @weapon_one
  end

  def self.create_weapon_two(choice)
    @weapon_one = Weapon.new(choice)
  end

  def initialize(choice)
    @choice = choice
    @won = nil
  end

  def format_choice
    @choice = @choice.downcase.to_sym
  end

  def computer_choice
    @choice = Game::R_P_S.sample
  end

  def set_win
    @won = true
  end

  def set_lose
    @won = false
  end

  def set_tie
    @won = :tie
  end

end
