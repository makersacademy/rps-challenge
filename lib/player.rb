
class Player

  attr_reader :name, :choice
  attr_writer :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def rock
    @choice = 'rock'
  end

  def paper
    @choice = 'paper'
  end

  def scissors
    @choice = 'scissors'
  end

end
