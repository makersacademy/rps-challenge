class Player

  attr_reader :name, :player_choice

  def initialize(name)
    @name = name
  end

  def make_choice(choice)
    choice.downcase!
    @player_choice = choice.to_sym
  end
end