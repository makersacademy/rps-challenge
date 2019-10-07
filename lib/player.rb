class Player
  attr_reader :choice

  def initialize(choice)
    @choice = choice.to_s
  end

end
