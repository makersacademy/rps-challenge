class Game
  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player, :computer, :player_choice, :computer_choice
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def player_won?
    get_result == :win
  end

  def player_lost?
    get_result == :lose
  end

  def player_draw?
    get_result == :draw
  end

  def set_player_choice
    self.player_choice = player.choice.downcase.to_sym
  end

  def set_computer_choice
    self.computer_choice = computer.random_choice.downcase.to_sym
  end

  def get_result
    GAME_RULES[player_choice][computer_choice]
  end

  def reset_choices
    self.player_choice = nil
    self.computer_choice = nil
  end

  private
  attr_writer :player_choice, :computer_choice

end
