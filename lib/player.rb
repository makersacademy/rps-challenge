class Player

  VALID_CHOICES = [:Rock, :Paper, :Scissors]

  attr_reader :choice
  attr_accessor :name

  def initialize(name)
    @name = name
    @choice = nil
  end

  def set_choice selection
    selection_sym = selection.capitalize.to_sym
    return 'That is not a valid choice' if not VALID_CHOICES.any? {|vc| vc == selection_sym}
    @choice = selection_sym
  end
end
