class Player

  attr_reader :name, :playertype, :choice

  def initialize(name = "computer", playertype = "computer")
    @name = name
    @playertype = playertype
    @choice = nil
  end

  def update_choice(choice)
    # if @playertype = "computer"
    @choice = choice
  end

end
