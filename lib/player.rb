class Player 
  attr_reader :name, :option

  def initialize(name)
    @name = name
    @option = ''
  end

  def choose_option(option)
    @option = option
  end
end