require './lib/computer.rb'

class Game

attr_reader :rules

def initialize
  @rules = {
    :Rock => {:Rock => :Draw, :Paper => :Paper, :Scissors => :Rock},
    :Paper => {:Rock => :Paper, :Scissors => :Scissors, :Paper => :Draw},
    :Scissors => {:Scissors => :Draw, :Rock => :Rock, :Paper => :Scissors}}
end

def play_a_round (move, move2)
  @rules[move][move2]
end














end