class Hands
  attr_reader :show

  def initialize
    normal_set
  end

  private

  def normal_set
    @show = [:rock, :paper, :scissors]
  end

end
