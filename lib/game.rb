class Game
  @current_game = nil

  def self.start(player_name, player_klass=Player)
    player = player_klass.new player_name
    @current_game = self.new(player)
    @attack = nil
  end

  def self.current_game
    @current_game
  end

  def initialize(player)
    @player = player
    @attack = nil
  end

  def attack
    @attack = ["Rock", "Paper", "Scissors"].sample
  end

  def player
    @player
  end

  def outcome
    if player_wins?
      return :win
    elsif player_loses?
      return :lose
    elsif player_draws?
      return :draw
    end
  end

private

  def player_wins?
    ((@player.last_move? == "Rock") && (@attack == "Scissors")) || ((@player.last_move? == "Paper") && (@attack == "Rock")) || ((@player.last_move? == "Scissors") && (@attack == "Paper"))
  end

  def player_loses?
    ((@player.last_move? == "Scissors") && (@attack == "Rock")) || ((@player.last_move? == "Rock") && (@attack == "Paper")) || ((@player.last_move? == "Paper") && (@attack == "Scissors"))
  end

  def player_draws?
    ((@player.last_move? == "Scissors") && (@attack == "Scissors")) || ((@player.last_move? == "Rock") && (@attack == "Rock")) || ((@player.last_move? == "Paper") && (@attack == "Paper"))
  end

end
