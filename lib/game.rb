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

  def beater?(player2, player1)

    if player1.weapon == player2.weapon
      "Tie. Choose again"
    elsif player1.weapon == @beats[player2.weapon]
      @turns << player1.name
      player1
    else
      @turns << player2.name
      player2
    end
  end

  def count
    @count = @turns.each_with_object(Hash.new(0)) { |player,beats| beats[player] += 1 }
  end

  def over?
    @turns.length < 2 ? false : true
  end

end