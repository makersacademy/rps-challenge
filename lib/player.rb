class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def update_choice(choice = "")
    return random_choice if @name == "Computer"
    @choice = choice.to_sym
  end

  def random_choice
    @choice = RpsRules::WEAPONS.sample
  end
end
