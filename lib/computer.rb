class Computer

  attr_reader :name, :shape

  def initialize
    @name = "Mister Computer"
    shapes = ['Rock', 'Paper', 'Scissors']
    random = Kernel.rand(0..2)
    @shape = shapes[random.to_i]
  end

end
