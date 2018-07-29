class Game

  attr_reader :player_1, :player_2, :players

  def self.create(player_1, player_2 = Player.new("computer"))
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2 = Player.new("computer"))
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    if outcome == :win
      @player_1
    elsif outcome == :lose
      @player_2
    else
      nil
    end
  end

  def draw?
    outcome == :draw
  end

  private

  def outcome
    return :win if player_1_wins?
    return :draw if @player_1.choice == @player_2.choice
    return :lose
  end

  def player_1_wins?
    @player_1.choice == "rock" && @player_2.choice == "scissors" ||
    @player_1.choice == "paper" && @player_2.choice == "rock" ||
    @player_1.choice == "scissors" && @player_2.choice == "paper"
  end

end
