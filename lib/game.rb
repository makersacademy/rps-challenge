class Game

  GAME_LOGIC = {
    "Rock" => { "Scissors" => :win, "Paper" => :loose, "Rock" => :draw },
    "Paper" => { "Rock" => :win, "Scissors" => :loose, "Paper" => :draw },
    "Scissors" => { "Paper" => :win, "Rock" => :loose, "Scissors" => :draw }
  }

  attr_reader :opponent, :player

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def self.launch(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def win?
    return true if GAME_LOGIC[player.move][opponent.current_move] == :win
    false
  end

  def loose?
    return true if GAME_LOGIC[player.move][opponent.current_move] == :loose
    false
  end

  def draw?
    return true if GAME_LOGIC[player.move][opponent.current_move] == :draw
    false
  end

end
