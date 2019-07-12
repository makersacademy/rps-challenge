require_relative 'game'
require_relative 'player'

class Computer

def initialize
  @move = ['rock', 'paper', 'scissors'].sample
end

  def move
    @move
  end

#   def move
#     ['rock', 'paper', 'scissors'].sample
#   end
end
