class Player

  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = ['rock','paper','scissors']
  end

end
