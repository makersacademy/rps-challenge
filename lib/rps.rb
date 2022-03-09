class Game
  attr_reader :outcomes, :computer_input

  def initialize(player_input)
    @player_input = player_input
    @outcomes = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper'
    }
    @computer_input = ['rock', 'paper', 'scissors'].sample
  end
  
  def win_lose_draw
    # p @player_input
    # p @computer_input
    if @player_input == @computer_input
      return "draw"
    elsif outcomes[@player_input] == @computer_input
      return "win"
    else
      return "lose"
    end
  end

  def self.instance
    @game ||= game.new
  end
end

# game = Game.new('rock')
# p game.win_lose_draw