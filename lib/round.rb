class Round
  attr_reader :name, :shape, :computer_shape

  def initialize(options)
    @name = options[:name]
    @shape = options[:shape]
    @computer_shape = options[:computer_shape]
  end
end
