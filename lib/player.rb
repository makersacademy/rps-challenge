class Player

attr_reader :name, :choice
attr_accessor :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def players_choice(choice)
    @choice = choice.to_i
  end
end
