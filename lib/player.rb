class Player
  attr_reader :name, :option, :options
  def initialize(name = "Computer")
    @name = name
    @options = ["rock", "scissor", "paper"]
  end

  def choose_option(option)
    @option = option
  end

  def choose_random_option
    @option = @options.sample
  end
end
