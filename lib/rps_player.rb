class Player

  attr_reader :name, :selection, :random_options

  def initialize(name)
    @name = name
  end

  def choice(selection)
    @selection = selection
  end

  def computer_choice
    @random_options
  end

  def random_options
    @random_options = ['Rock', 'Paper', 'Scissors'].sample
  end
end
