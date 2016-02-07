class Computer
  attr_reader :choice

  def initialize
    @choice = OPTIONS.sample
  end

  OPTIONS = ["rock", "paper", "scissors"].freeze
end
