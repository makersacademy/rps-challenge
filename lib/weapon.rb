class Weapon

  attr_reader :name, :lesser_weapons

  def initialize(name, *weapons)
    @lesser_weapons = weapons
    @name = name
  end

  def beats?(weapon)
    lesser_weapons.include?(weapon.name)
  end

  def self.rock
    new(:rock, :scissors)
  end

  def self.paper
    new(:paper, :rock)
  end

  def self.scissors
    new(:scissors, :paper)
  end

end