require_relative 'computer'
require_relative 'player'
class Game
  attr_reader :computer, :player
  def initialize(player_name)
    @player = Player.new(player_name)
    @computer = Computer.new
    
  end

  def rps_logic(player_choice, computer)
    if player_choice == 'ROCK' && computer == 'SCISSORS'
      @player.score_increase
    elsif player_choice == 'SCISSORS' && computer == 'PAPER'
      @player.score_increase
    elsif player_choice == 'PAPER' && computer == 'ROCK'
      @player.score_increase
    elsif player_choice == computer
      return
    else
      @computer.score_increase
    end
  end

  def round(player_choice, computer)
    @player.choice_log(player_choice)
    @computer.choice_log(computer)
    rps_logic(player_choice, computer)
  end

  def winner
    @player.score == 3 ? 'YOU WIN!' : 'YOU LOSE!'
  end
end