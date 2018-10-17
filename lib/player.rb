class Player
  attr_reader :name, :chosen_option

  def initialize(name = "Anonymous player")
    @name = name
    @chosen_option = nil
  end

  def choose_option(option)
    @chosen_option = option
  end
end
