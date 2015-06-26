class Player

  attr_accessor :opponent, :name, :choice

  def initialize
    @name = nil
    @choice = nil
  end

  def choose_rock_paper_or_scissors choice
    @choice = choice
    choice
  end

  def winner?
    no_opponent
    opponent_has_not_made_choice
    rock_paper_scissors
  end

  def tied?
    no_opponent
    opponent_has_not_made_choice
    choice == opponent.choice
  end

  private

  def opponent_has_not_made_choice
    fail 'Still waiting for your opponent to decide' unless opponent.choice
  end

  def no_opponent
    fail 'Erm, you have no opponent :/' unless opponent
  end

  def choice_to_number choice
    rps_hash = { "rock" => 0, "scissors" => 2, "paper" => 1 }
    rps_hash[choice]
  end

  def rock_paper_scissors

    opponent_choice = opponent.choice

    your_number = choice_to_number(choice)
    opponents_number = choice_to_number(opponent_choice)

    (your_number - opponents_number) % 3 == 1

  end

end
