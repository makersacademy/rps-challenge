class Round
  attr_reader :name

  def initialize(options)
    @name = options["name"]
    @shape = options["shape"]
    @opposition_shape = options["opposition_shape"]
  end
end
