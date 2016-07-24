class Player

  attr_reader :name, :choice
  #attr_accessor

  def initialize(player_name)
    @name = player_name
  end

  def set_choice(choice)
    @choice = choice
  end

end
