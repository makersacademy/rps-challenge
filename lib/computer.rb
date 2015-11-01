class Computer

  attr_reader :weapon
  
  def initialize
    @weapon = ''
  end

  def choose_weapon
    choose
  end

  private

  def choose
    t = ['Scissors','Rock','Paper'].sample
    @weapon = t
    t
  end

end
