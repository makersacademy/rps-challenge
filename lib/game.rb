class Game

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    @options = OPTIONS
  end

  def choice
    @options.sample
  end

end
