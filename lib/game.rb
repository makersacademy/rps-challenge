class Game 

  attr_reader :players, :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player1
  end

  def self.create(player1, player2)
    @instance_of_game = Game.new(player1, player2)
  end

  def self.instance
    @instance_of_game
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def winner(player_1, player_2)
    if player_1.choice == "Rock" and player_2.choice == "Paper"
      return player_2
    elsif player_1.choice == "Rock" and player_2.choice == "Scissors"
      return player_1
    elsif player_1.choice == "Scissors" and player_2.choice == "Rock"
      return player_2
    elsif player_1.choice == "Scissors" and player_2.choice == "Paper" 
      return player_1
    elsif player_1.choice == "Paper" and player_2.choice == "Rock"
      return player_1
    elsif player_1.choice == "Paper" and player_2.choice == "Scissors"
      return player_2
    else 
      return "Draw"
    end
  end

  def switch_turn
    if @turn == player_1
      @turn = player_2
    else 
      @turn = player_1
    end
  end

end
