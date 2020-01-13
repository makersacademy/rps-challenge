class Game

  attr_reader :player_1

  def initialize(player_1,computer)
    @player_1 = player_1
    @computer = computer
  end

  def self.create(player_1,computer)
    @game = Game.new(player_1,computer)
  end

  def self.instance
    @game
  end

  # def rules
  #   if @player_1.move == "rock" && @computer.move == "scissors"
  #     puts "Player 1 wins"
  #   elsif @player_1.move == "scissors" && @player_1.move == "rock"
  #     puts "Player 2 wins"
  #   elsif @player_1.move == "paper" && @player_1.move == "rock"
  #     puts "Player 1 wins"
  #   elsif @player_1.move == "rock" && @player_1.move == "paper"
  #     puts "Player 2 wins"
  #   elsif @player_1.move == "scissors" && @player_1.move == "paper"
  #     puts "Player 1 wins"
  #   elsif @player_1.move == "paper" && @player_1.move == "scissors"
  #     puts "Player 2 wins"
  #   else
  #     puts "It's a draw"
  #   end
end
