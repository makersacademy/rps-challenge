class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def move
    @move
  end

  def submit_choice(choice)
    @move = choice.downcase.to_sym
  end

end
