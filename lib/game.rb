class Game
  @current_game = nil

  def self.start(player_name)
    @current_game = self.new(player_name)
  end

  def self.current_game
    @current_game
  end

  def initialize(player_name)
    @player_name = player_name
    @return_attack = nil
  end

  def attack
    ["Rock", "Paper", "Scissors"].sample
  end

  def player_name
    @player_name.dup
  end

end
