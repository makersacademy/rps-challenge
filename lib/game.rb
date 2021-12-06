require_relative 'computer'
require './app/rps'

class Game
    attr_reader :outcome

def compmove
  compmove = ["rock", "paper", "scissors"].sample
  @compmove = compmove
end

def outcome
  if $weapon == "rock" && compmove == "rock"
    outcome = "draw"
  elsif $weapon == "rock" && compmove == "paper"
    outcome = "lose"
  else $weapon == "rock" && compmove == "scissors"
    outcome = "win"
    end

  if $weapon == "paper" && compmove == "rock"
    outcome = "win"
  elsif $weapon == "paper" && compmove == "paper"
    outcome = "draw"
  else $weapon == "paper" && compmove == "scissors"
    outcome = "lose"
  end

  if $weapon == "scissors" && compmove == "rock"
    outcome = "lose"
  elsif $weapon == "scissors" && compmove == "paper"
    outcome = "win"
  else $weapon == "scissors" && compmove == "scissors"
    outcome = "draw"
  end
  
  p outcome
  
end

end