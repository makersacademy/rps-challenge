class Game

  attr_reader :game, :choice, :player_1, :result, :winner

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player, choice = set_choice)
    @player_1 = player
    @choice = choice
  end

  def set_choice
     ["rock","paper","scissors"].sample
  end

  def set_player_1_choice(choice)
    @player_1.set_choice(choice)
  end

  def check_result
    @player_1.choice == @choice ? @result = tie : @result = set_winner
  end

  def set_winner(winner = set_result)
    winner == "computer" ? @winner = "the computer" : (@player_1.receive_points) && (@winner = "#{@player_1.name}")
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
