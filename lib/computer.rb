class Computer

  attr_reader :move2, :name2

  def initialize(options)
    @move2 = options.sample
    @name2 = 'Computer'
  end

  def self.create(options)
    @computer = Computer.new(options)
  end

  def self.instance
    @computer
  end
end
