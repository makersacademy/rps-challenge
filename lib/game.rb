class Game
  attr_accessor :players
  attr_reader :count 
  
  def initialize
    @players = []
    @turns = []
  end

  BEATS = { paper: :scissor, rock: :paper, scissor: :rock}

  def add_player(name)
    @players << name 
  end

  def beater?
   if players[0].weapon == players[1].weapon; :tie
    elsif players[0].weapon == BEATS[players[1].weapon]
      @turns << players[0].name
      players[0]
    else
      @turns << players[1].name
      players[1]
    end
  end

  def count(player)
    @turns.count { |turn| turn == player }
  end

  def over?
    @turns.length >= 2 ? true : false
  end

  def winner
    count(players[0].name) < count(players[1].name) ? players[1].name : players[0].name
  end

end