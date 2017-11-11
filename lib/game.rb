class Game

  attr_reader :name

  def initialize(name)
    @name = name
    @options = ['scissor', 'rock', 'paper']
  end

  def play(parameter)
    # if parameter == 'rock'
      if randomised_options == 'scissor'
        "#{@name} wins!"
      elsif randomised_options == 'paper'
        "#{@name} loses!"
      elsif randomised_options == parameter
        "Draw!"
      end
    # end
  end

  def randomised_options
    @options.sample
  end

end
