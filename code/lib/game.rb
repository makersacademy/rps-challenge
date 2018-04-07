class Game

  attr_reader :player
  
  def initialize
    @player = Player.new
    @choices = [:rock, :paper, :scissors]
    #hash table for winning combos
    @combos = {:rock => :scissors, :paper => :rock, :scissors => :paper}
  end

end