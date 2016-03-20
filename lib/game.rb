class Game

  RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }
  RPS_ARRAY = [:rock,:paper,:scissors]

  attr_reader :player_1, :latest_result, :player_1_choice, :player_2_choice

  def self.start(player_1)
    @game = Game.new(player_1)
    @rps_array = ["Rock","Paper","Scissors"]
  end

  def self.get_game
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
  end

  def rps(player_1_choice, player_2_choice = randrps)
    @player_1_choice = player_1_choice
    @player_2_choice = player_2_choice
    @latest_result = RULES[player_1_choice][player_2_choice]
  end

  def randrps
    RPS_ARRAY.sample
  end

  def ai_image
    URI("images/thinking.png")
  end

  def result_image
    URI("images/#{latest_result.to_s}.png")
  end

  def player_1_image
    URI("images/#{player_1_choice}.png")
  end

  def player_2_image
    URI("images/#{player_2_choice}.png")
  end

end
