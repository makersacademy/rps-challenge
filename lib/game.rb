require_relative './player.rb'

class Game

  WINNERS = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  
  attr_reader :player, :bot_choice
  

  def initialize(player)
    @player = player
    #@round_winner = nil
  end

  def bot_shake
    arr = ["rock", "paper", "scissors"]
    @bot_choice = arr[rand(0..2)]
  end

  def rules
    if @bot_choice == @player.choice then "Draw"
    elsif WINNERS[@player.choice] == @bot_choice then "#{@player.name} is the winner!"
    else 
      "The bot is the winner!"
    end
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
