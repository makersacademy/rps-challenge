class Round
  attr_reader :player1, :player2

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
    @controller = {
      rock: { rock: "tie", paper: "p1 loses", scissors: "p1 wins" },
      paper: { rock: "p1 wins", paper: "tie", scissors: "p1 loses" },
      scissors: { rock: "p1 loses", paper: "p1 wins", scissors: "tie" }
      }
  end

  def result
    check_choices
    check_result
  end

  private

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
