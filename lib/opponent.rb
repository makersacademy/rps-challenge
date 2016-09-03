class Opponent
  def initialize(options)
    @options = options
  end

  def make_choice
    @options.sample
  end
end
