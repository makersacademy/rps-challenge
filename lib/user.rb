class User

  attr_reader :player_name, :choice

  def initialize(name)
    @player_name = name
  end

  def make_a_choice(choice)
    @choice = choice
  end

end
