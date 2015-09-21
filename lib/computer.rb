class Computer

  attr_reader :name
  attr_reader :choice

  def initialize(list_of_moves)
    @list = list_of_moves
    @name = "Computer"
  end

  def choose
    @choice=@list.shuffle.first
  end

end
