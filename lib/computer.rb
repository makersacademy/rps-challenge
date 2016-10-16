class Computer
  def self.create_instance
    @instance ||= Computer.new
  end

  def self.instance
    @instance
  end

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @options.sample
  end
end
