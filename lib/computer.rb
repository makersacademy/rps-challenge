class Computer

  attr_reader :name, :decision

  def initialize(name='Computer')
    @name = name
  end

  def random_decides
    possibilities = ['rock','paper','scissors']
    @decision = possibilities[Kernel.rand(3)]
  end


end
