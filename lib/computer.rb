class Computer

attr_reader :name, :choice

  def initialize(name = 'Hal')
    @choice = nil
    @name = name
  end

  def choose
    @choice = [0,1,2].sample
  end



end
