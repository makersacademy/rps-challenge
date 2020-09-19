require_relative './player.rb'
require_relative './bot.rb'

class Game

  WINNERS = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  
  attr_accessor :player_one, :player_two, :active_player, :mode
  
  def initialize(player1, player2, mode = "single")
    @player_one = player1
    @player_two = player2
    @active_player = @player_one
    @mode = mode
  end

  def rules(player1, player2)
    if player1.choice == player2.choice then "It's a draw!"
    elsif WINNERS[player1.choice] == player2.choice then "#{player1.name} is the winner!"
    else 
      "#{player2.name} is the winner!"
    end
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def switch_players(a, b)
    @active_player == a ? @active_player = b : @active_player = a
  end

  def player_active?(player)
    @active_player == player
  end

  def multi?
    @mode == "multi"
  end

  def again?
    @mode == "multi" && player_active?(@player_one)
  end

end
