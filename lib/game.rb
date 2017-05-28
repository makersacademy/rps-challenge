require 'player'

class Game

  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @available_weapons = [{name: "rock", beats: "scissors", beaten_by: "paper"}, {name: "paper", beats: "rock", beaten_by: "scissors"}, {name: "scissors", beats: "paper", beaten_by: "rock"}]
  end

  def outcome
    player_weapon_choice
    if @player_weapon_choice[0][:beats] == @opponent.weapon_choice
      :player_wins
    elsif @player_weapon_choice[0][:beaten_by] == @opponent.weapon_choice
      :player_loses
    else
      :player_draws
    end
  end

  private

  def player_weapon_choice
    @player_weapon_choice = @available_weapons.select {|weapon| weapon[:name] == @player.weapon_choice}
  end
end
