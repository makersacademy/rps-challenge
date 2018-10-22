class Game

  def self.create(choice)
    @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  attr_reader :player_choice

  def initialize(choice)
    @player_choice = choice.to_sym
  end

  def computer_choice
    @computer_choice = random_choice
  end

  def random_choice
    [:Rock, :Paper, :Scissors].sample
  end

  def rules
    { Paper: :Rock, Rock: :Scissors, Scissors: :Paper }
  end

  def outcome
    computer_choice
    return "Draw" if draw
    rules.each do |key, value|
      if player_choice == key && @computer_choice == value
        return "Player wins"
      end
    end
    return "Computer wins"
  end

  private

  def draw
    player_choice == @computer_choice
  end

end
