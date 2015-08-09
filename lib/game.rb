require_relative 'random_weapon_generator'

class Game
  attr_reader :name

  def initialize(name="Player 1")
    @name = name
  end

  include RandomWeaponGenerator

  def play weapon
    opponent_weapon = random_weapon

    game_outcome(weapon, opponent_weapon)
  end


  private

  def game_outcome player_weapon, opponent_weapon
    return :win   if player_weapon == :rock and opponent_weapon == :scissors
    return :loss  if player_weapon == :rock and opponent_weapon == :paper
    return :draw  if player_weapon == :rock and opponent_weapon == :rock

    return :win   if player_weapon == :paper and opponent_weapon == :rock
    return :loss  if player_weapon == :paper and opponent_weapon == :scissors
    return :draw  if player_weapon == :paper and opponent_weapon == :paper

    return :win   if player_weapon == :scissors and opponent_weapon == :paper
    return :loss  if player_weapon == :scissors and opponent_weapon == :rock
    return :draw  if player_weapon == :scissors and opponent_weapon == :scissors
  end
end