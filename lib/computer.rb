class Computer

  attr_reader :option

  def initialize
    @option = ''
  end

  def choose_option
    choose
  end

  private

  def choose
    cpu = ['rock','scissors','paper'].sample
    @option = cpu
    cpu
  end

end
