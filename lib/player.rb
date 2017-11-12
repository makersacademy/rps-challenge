class Player

  attr_reader :name, :sign

  def initialize(name)
    @name = name
    @sign = nil
  end

  def choose_rock
    @sign = :rock
  end

  def choose_scissor
    @sign = :scissor
  end

  def choose_paper
    @sign = :paper
  end

  def refresh
    @sign = ""
  end
end
