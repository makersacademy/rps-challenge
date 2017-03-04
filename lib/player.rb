class Player

attr_reader :name

  def initialize(name)
    @name = name
    @option = nil
  end

  def choose_option(option)
    @option = option
  end

end
