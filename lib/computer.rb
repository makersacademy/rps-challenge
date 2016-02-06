class Computer
  attr_reader :name, :choice

  def initialize
    @name = NAMES.sample
    @choice = OPTIONS.sample
  end

  OPTIONS = ["rock", "paper", "scissors"].freeze
  NAMES = ["Randy", "T-Rex", "Buttercup", "The Pip Boy"].freeze
end
