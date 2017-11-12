class Player
  attr_reader :name, :choice, :win_count

  def initialize(name, choice = nil)
    @name = name
    @choice = choice
    @win_count = 0
  end

  def add_choice(choice)
    @choice = choice.to_sym
  end

  def increase_wins
    @win_count += 1
  end

end
