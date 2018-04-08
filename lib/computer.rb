require 'sinatra'
require_relative '../lib/player'
require_relative '../lib/computer'

class Computer

  attr_accessor :computer_choice

  def computer_choice_method
    @computer_choice = ["rock", "paper", "scissors"].sample
  end
end
