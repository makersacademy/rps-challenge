class Computer

  attr_reader :name

  def initialize(name = 'computer')
    @name = name.capitalize
  end

end
