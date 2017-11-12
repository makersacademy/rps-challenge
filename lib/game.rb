require_relative 'cpu'
class Game
  attr_reader :player, :cpu_choice, :player_choice

  def initialize(player)
    @player = player
    @cpu = Cpu.new
    @cpu_choice = nil
    @player_choice = nil
  end

  def self.save(instance)
    @instance = instance
  end

  def self.show
    @instance
  end

  def start_game(player_choice)
    @player_choice = player_choice
    @cpu_choice = @cpu.choose_sign
    winner
  end

  private

  def winner
    return 'No one' if draw
    return @player if player_won
    'The Computer'
  end

  def draw
    @cpu_choice == @player_choice
  end

  def player_won
    paper_won || scissor_won || rock_won
  end

  def paper_won
    @cpu.rock? && choose_paper?
  end

  def scissor_won
    @cpu.paper? && choose_scissor?
  end

  def rock_won
    @cpu.scissor? && choose_rock?
  end

  def choose_paper?
    @player_choice == 'paper'
  end

  def choose_scissor?
    @player_choice == 'scissor'
  end

  def choose_rock?
    @player_choice == 'rock'
  end

end
