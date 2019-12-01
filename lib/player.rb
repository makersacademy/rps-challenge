class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @option = ''
  end

  def choice(option)
    @option = option
  end

  def show_choice
    @option
  end

end
