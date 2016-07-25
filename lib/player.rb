class Player
  def initialize(choice)
    @choice = choice
  end

  def choice
    @choice.to_sym
  end
end
