class Game
  attr_accessor :players
  attr_reader :count 
  
  def initialize
  @players = []
  @beats = { paper: :scissor, rock: :paper, scissor: :rock}
  @weapons = @beats.keys
  @turns = []
  end

  def add_player(name)
       @players << name 
  end

  def beater?
    if players[0].weapon == players[1].weapon
      "Tie. Choose again"
    elsif players[0].weapon == @beats[players[1].weapon]
      @turns << players[0].name
      players[0]
    else
      @turns << players[1].name
      players[1]
    end
  end

  def count
    @count = @turns.each_with_object(Hash.new(0)) { |player,beats| beats[player] += 1 }
  end

  def over?
    @turns.length < 2 ? false : true
  end

end