class Computer

  attr_reader :list, :choice

  def initialize
    @list = ["rock", "paper", "scissors"]
    @choice = nil
  end

  def random_selector
    @choice = self.list.sample
  end

end
