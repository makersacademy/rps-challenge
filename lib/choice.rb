class Choice
  attr_reader :player1_choice, :incumbent_choice

  def initialize(player1_choice, incumbent_choice = [:Rock, :Paper, :Scissors, :lizard, :Spock].sample)
    @player1_choice = player1_choice
    @incumbent_choice = incumbent_choice
  end

  def self.create(player1_choice, incumbent_choicen = [:Rock, :Paper, :Scissors, :lizard, :Spock].sample)
    @choice_instance = Choice.new(player1_choice, incumbent_choicen = [:Rock, :Paper, :Scissors, :lizard, :Spock].sample)
  end

  def self.instance
    @choice_instance
  end

end
