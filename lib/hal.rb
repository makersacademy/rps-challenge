class Hal
  attr_reader :attack, :attacks

  def initialize
    @attacks = ["Rock", "Paper", "Scissors"]
    @attack = @attacks.sample
  end

  # def self.create
  #   @hal = Hal.new
  # end
  #
  # def self.instance
  #   @hal
  # end
end
