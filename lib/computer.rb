class Computer
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def throws
    %w{rock paper scissors}.sample
  end
  
end
