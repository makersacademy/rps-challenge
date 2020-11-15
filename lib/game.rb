require_relative './cpu.rb'

class Game
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :cpu, :round

  def initialize(player, cpu = CPU.new)
    @player = player
    @cpu = cpu
    @round = 1
  end

  def play_round(player_choice)
    @player.choose(player_choice)
    @cpu.choose
    @round += 1
  end

  def update_scores
    if @player.choice == :rock && @cpu.choice == :scissors
      @player.receive_point
    elsif @player.choice == :paper && @cpu.choice == :rock
      @player.receive_point
    elsif @player.choice == :scissors && @cpu.choice == :paper
      @player.receive_point
    elsif @cpu.choice == :rock && @player.choice == :scissors
      @cpu.receive_point
    elsif @cpu.choice == :paper && @player.choice == :rock
      @cpu.receive_point
    elsif @cpu.choice == :scissors && @player.choice == :paper
      @cpu.receive_point
    end
  end
end