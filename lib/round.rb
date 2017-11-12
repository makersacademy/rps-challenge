class Round
  attr_reader :player1, :player2

  CONTROLLER = {
    rock: { rock: :T, paper: :L, scissors: :W, spock: :L, lizard: :W },
    paper: { rock: :W, paper: :T, scissors: :L, spock: :W, lizard: :L },
    scissors: { rock: :L, paper: :W, scissors: :T, spock: :L, lizard: :W },
    spock: { rock: :W, paper: :L, scissors: :W, spock: :T, lizard: :L },
    lizard: { rock: :L, paper: :W, scissors: :L, spock: :W, lizard: :T }
    }

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  def result
    check_choices
    update_tally
    check_result
  end

  def self.create_instance(player1, player2 = Player.new("Computer"))
    @round = self.new(player1, player2)
  end

  def self.instance
    @round
  end

  def reset_choices
    @player1.reset_choice
    @player2.reset_choice
  end

  private

  def update_tally
    @player1.increase_wins if check_result == :W
    @player2.increase_wins if check_result == :L
  end

  def check_result
    CONTROLLER[@player1.choice][@player2.choice]
  end

  def check_choices
    @player1.add_choice(randomiser) if no_choice_p1
    @player2.add_choice(randomiser) if no_choice_p2
  end

  def randomiser
    CONTROLLER.keys[rand(5)]
  end

  def no_choice_p1
    @player1.choice.nil?
  end

  def no_choice_p2
    @player2.choice.nil?
  end

end
