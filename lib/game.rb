class Game

  attr_reader :player, :user_choice, :game_choice, :round_number
  attr_writer :round_number

  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
    }

  def initialize(player)
    @player = player
    @round_number = 1
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(choice)
    @user_choice = choice
  end

  def game_pick
    @game_choice = [:rock, :paper, :scissors].sample
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  def update_round
    self.round_number += 1
  end

  private

  attr_writer :user_choice, :game_choice

  def result
    GAME_RULES[user_choice][game_choice]
  end

end
