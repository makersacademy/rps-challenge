class Game
  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player, :computer, :result, :player_choice, :computer_choice
  def initialize(player, computer)
    @player = player
    @computer = computer
    @result = nil
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def player_won?
    @result == :win
  end

  def player_lost?
    @result == :lose
  end

  def player_draw?
    @result == :draw
  end

  def set_player_choice
    @player_choice = @player.choice.downcase.to_sym
  end

  def set_computer_choice
    @computer_choice = computer.random_choice.downcase.to_sym
  end

  def get_result
    @result = GAME_RULES[@player_choice][@computer_choice]
  end

  def reset_choices
    @player_choice = nil
    @computer_choice = nil
  end

end
