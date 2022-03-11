class Game
  attr_reader :outcomes, :computer_input, :input, :name
  attr_writer :computer_input

  def initialize(input, name)
    @input = input
    @name = name
    @outcomes = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper' }
    @computer_input = ['rock', 'paper', 'scissors'].sample
  end
  
  def win_lose_draw
    if @input == @computer_input
      return "draw"
    elsif outcomes[@input] == @computer_input
      return "win"
    else
      return "lose"
    end
  end

end