require_relative 'player'
class Game
  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

  end

  def declare_winner(player_1_option, player_2_option)
    @results = {
      'rock/paper' => "#{player_2.name} won!",
      'rock/scissor' => "#{player_1.name} won!",
      'paper/scissor' => "#{player_2.name} won!",
      'paper/rock' => "#{player_1.name} won!",
      'scissor/paper' => "#{player_1.name} won!",
      'scissor/rock' => "#{player_2.name} won!",
      'rock/rock' => "Draw",
      'scissor/scissor' => "Draw",
      'paper/paper' => "Draw"
    }
    @results["#{player_1_option}/#{player_2_option}"]
  end

  def self.start_game(player_1,player_2)
    @game = Game.new(player_1,player_2) 
  end

  def self.game
    @game
  end


end
