require_relative 'result'

class Game

  def initialize(name, parameter)
    @name = name
    @options = ['scissor', 'rock', 'paper']
    @parameter = parameter
    @result = Result.new
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
      @result.comp_lose_scissor
    elsif randomised_options == 'paper'
      @result.comp_win_paper
    end
  end

  def scissor
    if randomised_options == 'paper'
      @result.comp_lose_paper
    elsif randomised_options == 'rock'
      @result.comp_win_rock
    end
  end

  def paper
    if randomised_options == 'rock'
      @result.comp_lose_rock
    elsif randomised_options == 'scissor'
      @result.comp_win_scissor
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
