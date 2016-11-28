class Computer

attr_reader :name, :choice

  def initialize
    @choice = nil
    @name = "Computer #{["R2D2","C3PO","HAL 9000","Bender","Robocop", "GLADOS","Skynet","MechaGodzilla","T-800","Wall-E","Optimus Prime"].sample}"
  end

  def choose
    @choice = [:rock,:paper,:scissors].sample
  end



end
