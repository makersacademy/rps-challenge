class Game

  attr_reader :game, :choice, :player_1, :result, :winner, :computer_score

  POINTS = 1

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player, choice = set_choice)
    @player_1 = player
    @choice = choice
    @computer_score = 0
  end

  def set_choice
     ["rock","paper","scissors"].sample
  end

  def set_player_1_choice(choice)
    @player_1.set_choice(choice)
  end

  def check_result
    @player_1.choice == @choice ? (@result = tie) && (@winner = '') : @result = set_winner
  end

  def set_winner(winner = set_result)
    winner == "computer" ? (@winner = "the computer") && computer_receive_points : (@player_1.receive_points) && (@winner = "#{@player_1.name}")
  end

  def player_1_name
    @player_1.name
  end

  def player_1_choice
    @player_1.choice
  end

  def player_1_score
    @player_1.score
  end

  def computer_receive_points
    @computer_score += POINTS
  end

  private

  def tie
    "It's a tie!"
  end

  def set_result
    choices = [@player_1.choice,@choice].join('').downcase.to_sym
    results = { rockpaper: "computer", rockscissors: "player_1", paperscissors: "computer", paperrock: "player_1", scissorspaper: "player_1", scissorsrock: "computer" }
    results[choices]
  end

end
