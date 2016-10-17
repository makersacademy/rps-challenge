require_relative 'weapon'

class Game

  R_P_S = [:rock, :paper, :scissors]
  MISSING = {rock: :scissors, scissors: :paper, paper: :rock}

  attr_reader :weapon_one, :weapon_two, :winner

  def self.return_current_game
    @game
  end

  def self.create(weapon_one, weapon_two)
    @game = Game.new(weapon_one, weapon_two)
  end

  def initialize(weapon_one, weapon_two)
    @weapon_one = weapon_one
    @weapon_two = weapon_two
    @submitted_weapons = []
    @winner = nil
  end

  def add_submitted_weapons
    @submitted_weapons << weapon_one
    @submitted_weapons << weapon_two
  end

  def evaluate
    tie? ? @winner = :tie : @winner = MISSING[missing_element]
  end

  def set_statuses
    if @winner == :tie
      @submitted_weapons.each { |x| x.set_tie}
    else
      @submitted_weapons.each { |x| x.choice == @winner ? x.set_win : x.set_lose }
    end
  end

  def submitted_weapons
    @submitted_weapons.dup
  end

  private

  def tie?
    submitted_weapons.first.choice == submitted_weapons.last.choice
  end

  def missing_element
    choices = @submitted_weapons.map { |x| x.choice }
    choices = R_P_S - choices
    choices.first
  end


end
