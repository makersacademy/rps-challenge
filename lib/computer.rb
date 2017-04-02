require './lib/options'

class Computer

  attr_reader :choice, :rps

  def initialize
    @rps = Options.new
    @choice = nil
  end

  def make_decision
    self.choice = rps.options.sample
    choice
  end

  private

  attr_writer :choice

end
