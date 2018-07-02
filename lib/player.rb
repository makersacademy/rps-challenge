class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def submit_choice(choice)
    @move = choice.downcase.to_sym
  end
end
