#Understands how to play the game of RPS

require_relative 'player'
require_relative 'computer'

class Game

  RULES = { :rock => :scissors,
            :paper => :rock,
            :scissors => :paper }

  attr_reader :winner

  def initialize(player, computer)
    @player = player
    @computer = computer
    @playerweapon = nil
    @computerweapon = nil
    @winner = nil
  end

  def choose_weapon(weapon)
    @playerweapon = @player.pick_weapon(weapon)
  end

  def computer_choice
    @computerweapon = @computer.weapon_assignment
  end

  def outcome
    if RULES[@playerweapon] == RULES[@computerweapon]
      @winner = nil
    elsif RULES[@playerweapon] == @computerweapon
      @winner = @player
    else
      @winner = @computer
    end
  end

end
