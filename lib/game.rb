require_relative './cpu.rb'

class Game
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :cpu, :round, :winner, :loser

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

  def status
    if winner?
      assign_outcomes
      'complete'
    end
  end

  private

  def winner?
    [@player, @cpu].any? { |player| player.score == 5 }
  end

  def assign_outcomes
    [@player, @cpu].each do |player|
      @winner = player if player.score == 5
      @loser = player if player.score != 5
    end
  end
end