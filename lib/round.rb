class Round
  attr_reader :player1, :player2

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
    @controller = {
      rock: { rock: "T", paper: "L", scissors: "W" },
      paper: { rock: "W", paper: "T", scissors: "L" },
      scissors: { rock: "L", paper: "W", scissors: "T" }
      }
  end

  def result
    check_choices
    update_tally
    check_result
  end

  private

  def update_tally
    @player1.increase_wins if check_result == "W"
    @player2.increase_wins if check_result == "L"
  end

  def check_result
    @controller[@player1.choice][@player2.choice]
  end

  def check_choices
    @player1.add_choice(randomiser) if no_choice_p1
    @player2.add_choice(randomiser) if no_choice_p2
  end

  def randomiser
    @controller.keys[rand(3)]
  end

  def no_choice_p1
    @player1.choice.nil?
  end

  def no_choice_p2
    @player2.choice.nil?
  end

end
