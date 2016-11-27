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
    if    (self.player.choice == self.computer.choice)         ;return "Draw!";
    elsif ((self.player.choice - self.computer.choice) % 3) == 1 ;return "#{@player.name} Wins!";
    else                                                 ;return "#{@computer.name} Wins!"
    end
  end







end
