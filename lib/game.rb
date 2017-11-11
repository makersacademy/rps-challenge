class Game

  attr_reader :name

  def initialize(name)
    @name = name
    @options = ['scissor', 'rock', 'paper']
  end

  def play(parameter)
    draw?(parameter)
    return rock(parameter) if parameter == 'rock'
    return scissor(parameter) if parameter == 'scissor'
    return paper(parameter) if parameter == 'paper'
  end

  def rock(parameter)
    if randomised_options == 'scissor'
      "#{@name} wins!"
    elsif randomised_options == 'paper'
      "#{@name} loses!"
    end
  end

  def scissor(parameter)
    if randomised_options == 'paper'
      "#{@name} wins!"
    elsif randomised_options == 'rock'
      "#{@name} loses!"
    end
  end

  def paper(parameter)
    if randomised_options == 'rock'
      "#{@name} wins!"
    elsif randomised_options == 'scissor'
      "#{@name} loses!"
    end
  end

  def draw?(parameter)
    'Draw!' if randomised_options == parameter
  end

  private
  def randomised_options
    @options.sample
  end


  # if 'rock' > 'scissor'
  #
  # if randomised_options == 'scissor' && parameter == 'rock'
  #   "#{@name} wins!"

  # def win?(parameter)
  #
  # end
  #
  # def draw?
  #   randomised_options == parameter
  # end
  #
  # def lose?
  # end
end
