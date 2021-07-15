require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player, :cpu, :cpu_weapon, :weapon

    def initialize(player = Player.new, cpu = Computer.new)
      @player = player
      @cpu = cpu
    end

    def results(player_weapon)
      if @cpu.beats?(player_weapon)
        puts "Not this time!"
      elsif @cpu.ties?(player_weapon)
        puts "And that's a draw!"
      else puts "You won!"
      end
    end

end