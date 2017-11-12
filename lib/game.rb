class Game

  attr_reader :name

  def initialize(name, parameter)
    @name = name
    @options = ['scissor', 'rock', 'paper']
    @parameter = parameter
  end

  def self.store(game)
    @game = game
  end

  def self.read
    @game
  end

  def play
    return draw? if randomised_options == @parameter
    return rock if @parameter == 'rock'
    return scissor if @parameter == 'scissor'
    return paper if @parameter == 'paper'
  end

  def rock
    if randomised_options == 'scissor'
      "Computer selected scissor, #{@name} wins!"
    elsif randomised_options == 'paper'
      "Computer selected paper, #{@name} loses!"
    end
  end

  def scissor
    if randomised_options == 'paper'
      "Computer selected paper, #{@name} wins!"
    elsif randomised_options == 'rock'
      "Computer selected rock, #{@name} loses!"
    end
  end

  def paper
    if randomised_options == 'rock'
      "Computer selected rock, #{@name} wins!"
    elsif randomised_options == 'scissor'
      "Computer selected scissor, #{@name} loses!"
    end
  end

  def draw?
    'Draw!'
  end

  private
  def randomised_options
    @options.sample
  end
end
