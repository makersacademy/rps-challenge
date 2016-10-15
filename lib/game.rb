class Game

attr_reader :outcome, :users_choice, :bots_choice

def self.create
  @@game = Game.new
end

def game
  @@game
end

def played?
  @played
end

def play
  
end

private

def initialize
  @played = false
end


end
