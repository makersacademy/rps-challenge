require_relative 'player'
class Game

attr_reader :player, :computer, :player_move


def initialize(player = Player.new, computer = Player.new)
  @player = player
  @computer = computer
end

def self.new_game(player)
  @game = Game.new(player)
end

def self.instance
  @game
end

def player_move(player)
  if player == "rock"
    @player_move = 0
  elsif player == "paper"
    @player_move = 1
  else
    @player_move = 2
end

def computer_move
  @computer_move = computer.random
end

def winner
  if @player_move == @computer_move
    "It's a tie!"
  elsif (@player_move - @computer_move)%3 ==1
    "You Win!"
  else
    "You Lose!"
  end
end


end
