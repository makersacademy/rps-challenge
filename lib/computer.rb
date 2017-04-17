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
    t = ['scissors','rock','paper'].sample
    @weapon = t
    t
  end

end
