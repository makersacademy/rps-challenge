class Player
  attr_reader :name, :choose_option, :random_option

  def initialize(name)
    @name = name
  end

  def choose_option(option)
    option
  end

  def random_option
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
