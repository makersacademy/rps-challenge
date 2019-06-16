class Result

  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  attr_reader :name, :choice, :computer_choice

  def initialize(options)
    @name = options[:name]
    @choice = options[:choice]
    @computer_choice = options[:computer_choice]
  end

  def win?
    results == :win
  end

  def lose?
    results == :lose
  end

  def draw?
    results == :draw
  end

  private

  def results
    return if @computer_choice.nil?
    RULES[@choice][@computer_choice]
  end
end
