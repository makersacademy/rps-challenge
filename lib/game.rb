class Game

  attr_reader :player, :computer

  def initialize(player,computer)
   @player = player
   @computer = computer

  end

  def self.create(player,computer)
    @current_game = Game.new(player,computer)
  end

  def self.current_game
    @current_game
  end

  def calculate
    if      (@player.choice == @computer.choice)         ;return "Draw!";
    elsif ((@player.choice - @computer.choice) % 3) == 1 ;return "#{@player.name} Wins!";
    else                                                 ;return "#{@computer.name} Wins!"
    end
  end







end
