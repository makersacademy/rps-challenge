

class Cpu

  attr_reader :choice, :name

  def initialize(config, name = random_name)
    @options = config.options
    @choice = nil
    @name = name
  end

  def select
    @choice = @options.sample
  end

  def random_name
    [
      "WATSON",
      "KITT",
      "MOTHER",
      "DEEP THOUGHT",
      "HAL 9000",
      "SKYNET"
    ].sample
  end

end
