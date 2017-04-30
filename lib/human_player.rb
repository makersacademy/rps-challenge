class HumanPlayer
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def choice(arg)
    arg.downcase.to_sym
  end
end
