require_relative 'text_client'

class Game
  attr_reader :player1_score, :player2_score
  attr_accessor :players
  def initialize(player1=nil, player2=nil, text_client=nil)
    @players = [player1, player2]
    @player1_score, @player2_score = 0, 0
    @text_client = text_client
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def reset
    @player1_score, @player2_score = 0, 0
    @players = []
  end

  def reset_player1(player)
    @players.shift
    @players.unshift(player)
  end

  def p1_win
    @player1_score += 1
  end

  def p2_win
    @player2_score += 1
  end

  private
  def text_choice
    @text_client.pull_texts.first
  end
end

# class Player
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# ga = Game.create(Player.new('A'), Player.new('B'))
# p ga.players
# ga.reset_player1(Player.new('X'))
# p ga.players
