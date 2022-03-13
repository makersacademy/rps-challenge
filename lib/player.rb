class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def assign_choice(radio_button_selection)
    @choice = radio_button_selection
  end

end
