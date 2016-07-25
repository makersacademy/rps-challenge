class Game
  CHOICES = {
        rock: {rock: :draw, paper: :lose, scissors: :win},
        paper: {rock: :win, paper: :draw, scissors: :lose},
        scissors: {rock: :lose, paper: :win, scissors: :draw}
  }.freeze

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    CHOICES[@player.choice][@computer.choice]
  end


  def self.start_game(player,computer)
    @game = Game.new(player,computer)
  end

  def self.current_game
    @game
  end
end
