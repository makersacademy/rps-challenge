class Game
  RPS = ['rock', 'paper', 'scissors']
  WINNERS = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :game_choice, :player, :player_choice

  def self.create(name = "Player")
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def initialize(name = "Player")
    @player = name
  end

  def play(player_choice)
    @player_choice = player_choice
    @game_choice = random_rps
    result
  end

  private

  def random_rps
    RPS.sample
  end

  def result
    return "WIN" if WINNERS[@player_choice] == @game_choice
    return "LOSE" if WINNERS[@game_choice] == @player_choice
    "DRAW"
  end

end
