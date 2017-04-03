#stores name and selection of player

class Player

  attr_reader :name, :selection

  def initialize(name)
    @name = name
    @selection
  end

  def assign_choice(input)
    self.selection = input
  end

  private

  attr_writer :selection

end
