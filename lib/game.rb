require_relative 'player'

class Game
  attr_reader :moves, :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance 
    @game
  end

  def initialize(player)
    @player = player
    @moves = ["rock", "paper", "scissors"]
  end

  def take_turn(player, move)
    if move == "rock" then rock_move(player)
    elsif move == "scissors" then scissor_move(player)
    elsif move == "paper" then paper_move(player)
    else "Invalid move"
    end
  end
  
  private 

  def rock_move(player)
    comp_move = @moves.sample
    if comp_move == "scissors" then "#{player.name}'s Rock beats computers' Scissors!"
    elsif comp_move == "paper" then "#{player.name}'s Rock loses to computers' Paper"
    else "#{player.name}'s Rock draws with computers' Rock"
    end
  end

  def paper_move(player)
    comp_move = @moves.sample
    if comp_move == "rock" then "#{player.name}'s Paper beats computers' Rock!"
    elsif comp_move == "scissors" then "#{player.name}'s Paper loses to computers' Scissors!"
    else "#{player.name}'s Paper draws with computers' Paper"
    end
  end

  def scissor_move(player)
    comp_move = @moves.sample
    if comp_move == "paper" then "#{player.name}'s Scissors beats computers' Paper!"
    elsif comp_move == "rock" then "#{player.name}'s Scissors to loses computers' Rock"
    else "#{player.name}'s Scissors draws with computers' Scissors"
    end
  end

end
