class Rock_Paper_Scissors
  
  attr_reader :player_name 
  
  Rps = ["rock", "paper", "scissors"]

  def initialize(player_name)
    @player_name = Game.new(player_name)
  end

  private
  def rps_rand
    Rps.sample
  end 
end
