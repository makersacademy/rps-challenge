class Game

  def self.create(player_1, player_2 = Player.new("computer"))
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2 = Player.new("computer"))
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  private

  def outcome
    return :win if player_1_wins?
    return :draw if @player_1.attack_type == @player_1.attack_type
    return :lose
  end

  def player_1_wins?
    @player_1.attack_type == "rock" && @player_2.attack_type == "scissors" ||
    @player_1.attack_type == "paper" && @player_2.attack_type == "rock" ||
    @player_1.attack_type == "scissors" && @player_2.attack_type == "paper"
  end

end
