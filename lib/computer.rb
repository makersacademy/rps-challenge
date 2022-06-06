class Computer
  attr_reader :option

  def initialize(options)
    @option = options.sample
  end
end
