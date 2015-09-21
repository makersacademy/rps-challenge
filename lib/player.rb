class Player
  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  def picks(choice)
    self.move = choice.downcase.to_sym
  end
end
