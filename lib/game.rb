require_relative 'player.rb'

class Game
  attr_reader :player, :player2

  def initialize(player, player2)
    @player = player
    @player2 = player2
  end

  def output_winner
    check_fairness
    declare_winner
  end

  private

  def check_fairness
    raise 'You both, choose a weapon!' if player.weapon.nil? || player2.weapon.nil?
  end

  def declare_winner
    return "It's a draw!" if player.weapon == player2.weapon

    if player.weapon == 'Rock' && player2.weapon == 'Scissors'
      player.name
    elsif player.weapon == 'Paper' && player2.weapon == 'Rock'
      player.name
    elsif player.weapon == 'Scissors' && player2.weapon == 'Paper'
      player.name
    elsif player.weapon == 'Lizard' && (player2.weapon == 'Spock' || player2.weapon == 'Paper')
      player.name
    elsif player.weapon == 'Spock' && (player2.weapon == 'Scissors' || player2.weapon == 'Rock')
      player.name
    else
      player2.name
    end
  end
end
