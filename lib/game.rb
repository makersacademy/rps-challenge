require_relative 'random_weapon_generator'

class Game
  include RandomWeaponGenerator

  attr_reader :name

  def initialize(name="Player 1")
    @name = name
  end

  def play weapon
    game_outcome(weapon, random_weapon)
  end

  private

  def game_outcome player_weapon, opponent_weapon
    return :win   if player_weapon == :rock && opponent_weapon == :scissors
    return :loss  if player_weapon == :rock && opponent_weapon == :paper
    return :draw  if player_weapon == :rock && opponent_weapon == :rock

    return :win   if player_weapon == :paper && opponent_weapon == :rock
    return :loss  if player_weapon == :paper && opponent_weapon == :scissors
    return :draw  if player_weapon == :paper && opponent_weapon == :paper

    return :win   if player_weapon == :scissors && opponent_weapon == :paper
    return :loss  if player_weapon == :scissors && opponent_weapon == :rock
    return :draw  if player_weapon == :scissors && opponent_weapon == :scissors
  end
end