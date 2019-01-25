class Game
  attr_reader :players, :rounds

  def self.create(player_one, player_two, rounds)
    @game = Game.new(player_one, player_two, rounds)
  end

  def self.instance
    @game
  end

  def initialize(player_one, player_two, rounds)
    @players =[player_one, player_two]
    @rounds = rounds
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def winner?
    return player_one if player_one.move == "Rock" && player_two.move == "Scissors"
    return player_one if player_one.move == "Scissors" && player_two.move == "Paper"
    return player_one if player_one.move == "Paper" && player_two.move == "Rock"
    return "Draw!" if player_one.move == player_two.move
    player_two
  end
end
