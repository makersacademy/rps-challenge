class Game_1

  def initialize(player1, player2)
    @players = [player1, player2]
    # @player_1_action = player_1_action
    # @player_2_action = player_2_action
  end

  def self.create(player1, player2)
    @game = Game_1.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def player_1_action(choice)
    @result = []
    @result << choice
    choice
  end

  def player_2_action(choice)
    @result << choice
    choice
  end

  def check_tie
    return true if (@result[0] == @result[1])
    false
  end

  def result
    return player_1 if 
      (@result[0] == "Paper" && @result[1] == "Rock") ||
      (@result[0] == "Scissors" && @result[1] == "Paper") ||
      (@result[0] == "Rock" && @result[1] == "Scissors")
    return player_2
  end

end