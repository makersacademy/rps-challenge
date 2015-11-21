class OneSession

  GAME_RULES =
  {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {paper: :draw, scissors: :lose, rock: :win},
    scissors: {scissors: :draw, rock: :lose, paper: :win}
  }

  attr_reader :name, :player_choice, :computer_choice

  def initialize(options)
    @name = options["name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    return if @computer_choice == nil
    GAME_RULES[@player_choice][@computer_choice]
  end
  # def option(choice)
  #   @choice = choice
  # end

  # def add_choice (choice)
  #   @player_choice = choice
  # end

end
