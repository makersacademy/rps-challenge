class Player

  attr_reader :name, :comp_rand

  def initialize(name = 'Computer')
    @name = name
  end

  def comp_rand
    ['rock', 'paper', 'scissors'].sample
  end

end
