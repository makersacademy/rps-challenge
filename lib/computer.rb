class Computer
  def self.create_instance
    @instance ||= Computer.new
  end

  def self.instance
    @instance
  end

  attr_reader :choice

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
    @choice = nil
  end

  def choose
    @choice = @options.sample
  end
end
