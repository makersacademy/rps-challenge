require_relative 'human'
require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :human_player, :bot_player

  def initialize(human_player = Human.new(@name), bot_player = Computer.new)
    @human_player = human_player
    @bot_player = bot_player
  end

  def game_over?
    !@human_player.move == @bot_player.move
  end

  def play(move)
    @human_player.inputed_move(move)
    @bot_player.random_move
  end

  def who_won#(human_move, bot_move)
    human_move = @human_player.move
    bot_move = @bot_player.move
    case
    when human_move == "paper" && bot_move == "rock"
      puts "You won!"
    when human_move== "paper" && bot_move == "scissors"
      puts "The computer won!"
    when human_move == "rock" && bot_move == "paper"
      puts "The computer won!"
    when human_move == "rock" && bot_move == "scissors"
      puts "You won!"
    when human_move == "scissors" && bot_move == "rock"
      puts "The computer won!"
    when human_move == "scissors" && bot_move =="paper"
      puts "You won!"
    end
  end
end
#savanna=Human.new('savanna')
#alexa = Computer.new
#game = Game.new(savanna, alexa)
#game.play('paper')
#savanna.move
#alexa.move
#game.who_won
