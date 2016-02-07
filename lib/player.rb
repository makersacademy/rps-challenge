class Player

  attr_reader :name, :player_choice, :choice_options

  DEFAULT_CHOICES = [:rock, :paper, :scissors]

  def initialize(name, choice_options=DEFAULT_CHOICES)
    @name = name
    @choice_options = choice_options
  end

  def make_choice(choice)
    choice.downcase!
    @player_choice = choice.to_sym
  end
end