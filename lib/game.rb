require_relative 'cpu'
class Game
  attr_reader :player, :choosen

  def initialize(player)
    @player = player
    @cpu = Cpu.new
  end

  def winner(player_choice)
    return @player if player_won(player_choice)
    'The Computer'
  end

  private
  def player_won(player_choice)
    @cpu.choose_sign
    paper_won(player_choice) || scissor_won(player_choice) || rock_won(player_choice)
  end

  def paper_won(player_choice)
    @cpu.rock? && choose_paper?(player_choice)
  end

  def scissor_won(player_choice)
    @cpu.paper? && choose_scissor?(player_choice)
  end

  def rock_won(player_choice)
    @cpu.scissor? && choose_rock?(player_choice)
  end

  def choose_paper?(player_choice)
    player_choice == 'paper'
  end

  def choose_scissor?(player_choice)
    player_choice == 'scissor'
  end

  def choose_rock?(player_choice)
    player_choice == 'rock'
  end
end
