require_relative 'computer'
require './app/rps'

class Game
    attr_reader :outcome, :cpu, :result, :weapon


def result
  if $weapon == "rock" && $cpu == "scissors" || $weapon == 'paper' && $cpu == "rock" || $weapon == 'scissors' && $cpu == "paper"
    :win
  elsif $weapon == $cpu
    :draw
  else
    :lose
    end
  end
end