# Understands how to randomly choose from a list of options

class Opponent
  def initialize(options)
    @options = options
  end

  def make_choice
    options.sample
  end

  private
  attr_reader :options
end
