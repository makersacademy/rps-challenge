require_relative 'text_client'

class Game
  attr_reader :players, :player1_score, :player2_score
  def initialize(player1=nil, player2=nil, text_client=TextClient.new)
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

  def p1_win
    @player1_score += 1
  end

  def p2_win
    @player2_score += 1
  end

  def text_choice
    @text_client.pull_texts.first
  end
end