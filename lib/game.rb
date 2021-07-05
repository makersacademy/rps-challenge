class Game

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  attr_reader :computer_turn, :player

  def initialize(player_class = Player, computer_class = Computer)
    @player = player_class.new
    @computer = computer_class.new
    @computer_turn = ""
  end

  def self.create(player_1 = Player, player_2 = Computer)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result
    @player_turn = @player.turn.to_sym
    computers_turn
    if @player_turn == @computer_turn
      :draw
    elsif RULES[@player_turn] == @computer_turn
      :win
    else :lose
    end
  end

  private

  def computers_turn
    @computer_turn = @computer.turn
  end
end
