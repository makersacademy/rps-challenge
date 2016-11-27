class Player

  attr_reader :name, :active

  def initialize(name = "Player 1", active = true)
    @name = name
    @active = active
  end

  def is_active?
    self.active
  end

  def switch_active
    @active = !@active
  end



end
