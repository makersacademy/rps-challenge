class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = cpu_move if @name == "CPU"
  end

  def make_move(move)
    @move = move
  end

  private

  def cpu_move
    [:rock, :paper, :scissors].sample
  end
  
end
