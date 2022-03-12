class Player

  def initialize(name)
    @player = name
  end

  def name
    @player
  end

  private

  attr_reader :player

end