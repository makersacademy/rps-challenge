require_relative 'ai'

class Game 
  attr_reader :player_name, :result, :ai_move

  def self.instance
    @game
  end

  def self.create(name: name, ai_class: AI)
    @game = Game.new(name: name, ai_class: AI)
  end
  
  def initialize(name: name, ai_class: AI)
    @player_name = name
    @opponent = ai_class.new
  end

  def play(move)
    player_move = move.downcase.to_sym
    @ai_move = @opponent.get_move
    @result = battle(player_move)
  end

  private 

  def battle(player_move)
    moves = {
      :rock => {
        :scissors => :win,
        :paper => :lose,
        :rock => :draw
      },
      :paper => {
        :rock => :win,
        :scissors => :lose,
        :paper => :draw,
      },
      :scissors => {
        :paper => :win,
        :rock => :lose,
        :scissors => :draw
     }
    }
    moves[player_move][@ai_move]
  end
end
