require_relative "player"

class Game

  attr_reader :player, :game_move

  def self.create(player)
    @@game = Game.new(player)
  end

  def self.instance
    @@game
  end

  def initialize(player)
    @player = player
    @game_move = game_move
  end

  def move
    @game_move = ["Rock", "Paper", "Scissors"].sample

  end

  def calculate
    return "That is not a valid move. I am little bit case sensitive, please don't put capitals in the middle of your word. I have my limits. Please try again." if @player.player_move == "Error"
    return "It's A Draw!" if @player.player_move == "Rock" && @game_move == "Rock"
    return "You win!" if @player.player_move == "Rock" && @game_move == "Scissors"
    return "You lose!" if @player.player_move == "Rock" && @game_move == "Paper"
    return "It's A Draw!" if @player.player_move == "Scissors" && @game_move == "Scissors"
    return "You win!" if @player.player_move == "Scissors" && @game_move == "Paper"
    return "You lose!" if @player.player_move == "Scissors" && @game_move == "Rock"
    return "It's A Draw!" if @player.player_move == "Paper" && @game_move == "Paper"
    return "You win!" if @player.player_move == "Paper" && @game_move == "Rock"
    return "You lose!" if @player.player_move == "Paper" && @game_move == "Scissors"
  end

end
