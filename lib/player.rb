class Player
  attr_reader :name, :choice

  HUMAN_READABLE_CHOICES = [
    'rock', 'paper', 'scissors'
  ]

  def initialize(name)
    @name = name
    @computer_player = false
  end

  def choose(choice)
    @choice = choice
  end

  def choose_random(options)
    @choice = Kernel.rand(options - 1)
  end

  def choice_human
    HUMAN_READABLE_CHOICES[choice]
  end

  def computer?
    @computer_player
  end

  def is_computer
    @computer_player = true
  end
end
