class Player

  attr_reader :choice

  def chosen?
    !@choice.nil?
  end

  def choose choice
    @choice = choice
  end
end