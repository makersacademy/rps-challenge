require 'sinatra'
require_relative 'player'

class Computer

  attr_reader :move

  def move
    @move = ["rock", "paper", "scissors"].sample
  end
end
