class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = ""
  end

  def choose_option(option)
    @choice = option
    option
  end

  def random_option
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end
