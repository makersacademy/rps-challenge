class Computer < Player

  attr_reader :name

  def initialize(name)
    super(name)
  end

  def generate_computer_choice(game_options)
    @choice = game_options[rand(1..game_options.count)]
  end

  def computer_choice
    @choice
  end

end
