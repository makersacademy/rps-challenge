class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose_yellow
    @choice = "yellow-throat"
  end

  def choose_blue
    @choice = "blue-throat"
  end

  def choose_orange
    @choice = "orange-throat"
  end

  private

  attr_writer :choice

end
