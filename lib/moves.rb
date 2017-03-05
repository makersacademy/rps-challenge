
require './game'
class Moves
attr_reader :ans, :scissors, :paper, :rock, :computer_value
def initialize(rock, paper, scissors)
  @rock = rock
  @scissors = scissors
  @paper = paper
  @computer_value = ["rock","paper","scissors"].sample
end
def in_one(rock, paper, scissors)
if scissors
  @ans = "scissors"
elsif rock
  @ans = "rock"
else paper
  @ans = "paper"
end
end
end
