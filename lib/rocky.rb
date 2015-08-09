require 'sinatra'

class Game

  def initialize
    @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
    @throws = @defeat.keys
  end

  def play (throws)

  end


end