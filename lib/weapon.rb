class Weapon

  attr_reader :choice, :won

  def self.return_weapon_one
    @weapon_one
  end

  def self.create_weapon_one
    @weapon_one = Weapon.new
  end

  def self.return_weapon_two
    @weapon_one
  end

  def self.create_weapon_two
    @weapon_one = Weapon.new
  end

  def initialize
    @choice = choice
    @won = nil
  end

  def choose_rock
    @choice = :rock
  end

  def choose_paper
    @choice = :paper
  end

  def choose_scissors
    @choice = :scissors
  end


  def computer_choice
    @choice = [:rock, :paper, :scissors].sample
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
