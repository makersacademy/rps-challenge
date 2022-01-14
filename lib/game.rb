class Game
  attr_reader :cpu

  OPTIONS = [:rock, :paper, :scissors].freeze
  CONDITION = {
    rock: { rock: :tie, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :tie, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :tie }
  }.freeze

  def initialize(choice)
    @choice = choice.downcase.to_sym
  end

  def play
    @cpu = computer_choice
    CONDITION[@choice][cpu]
  end

  def computer_choice
    OPTIONS.sample
  end
  
end
