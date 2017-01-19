class Game

  attr_reader :player, :computer
  attr_accessor :calculations

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


  WIN = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  










end
