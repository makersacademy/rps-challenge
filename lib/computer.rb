class Computer
  attr_reader :select

  def select
    @select = [:rock, :paper, :scissors].shuffle.first
  end

end
