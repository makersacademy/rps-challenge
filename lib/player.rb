class Player 
  attr_reader :name, :option

  def initialize(name)
    @name = name
    @option = ''
  end
  # TODO rename option choice 
  def choose_option(option)
    @option = option
  end
end