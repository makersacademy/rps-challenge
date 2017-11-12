require_relative 'cpu'
class Game
  attr_reader :player

  def initialize(player)
    @player = player
    @cpu = Cpu.new
    @cpu_choice = nil
  end

  def start_game(player_choice)
    @cpu_choice = @cpu.choose_sign
    winner(player_choice)
  end

  private

  def winner(player_choice)
    return 'No one' if draw(player_choice)
    return @player if player_won(player_choice)
    return 'The Computer' if computer_won(player_choice)
    nil
  end

  def draw(player_choice)
    @cpu.choosen == player_choice
  end

  def player_won(player_choice)
    paper_won(player_choice) || scissor_won(player_choice) || rock_won(player_choice)
  end

  def computer_won(player_choice)
    paper_lose(player_choice) || rock_lose(player_choice) || scissor_lose(player_choice)
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

  def paper_lose(player_choice)
    @cpu.scissor? && choose_paper?(player_choice)
  end

  def rock_lose(player_choice)
    @cpu.paper? && choose_rock?(player_choice)
  end

  def scissor_lose(player_choice)
    @cpu.rock? && choose_scissor?(player_choice)
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
