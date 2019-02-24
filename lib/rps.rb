class RPS
  attr_reader :player_name 
  RPS = ["rock", "paper", "scissors"]
  
  def initialize(player_name)
    @player_name = Game.new(player_name)
  end

  def rps_rand
    RPS.sample
  end 
end
