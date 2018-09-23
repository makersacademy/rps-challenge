require_relative 'player'

class Computer < Player
  def initialize
    @name = "Computer"
  end

  # Is it a bad idea to change setter methods like this?
  def move=(list)
    @move = choice(list)
  end

  def computer?
    true
  end

  private
  # I made the sample method private in order to stub it. is that correct?
  def choice(options)
    options.sample
  end
end
