class Computer

attr_reader :name, :choice

  def initialize(name = 'Hal')
    @choice = nil
    @name = name
  end

  def choose
    @choice = ['rock','paper','scissors'].sample
  end



end
