class Bot
  RAND_NAME = %w[Scandium
                Titanium
                Vanadium
                Chromium
                Manganese
                Iron
                Cobalt
                Nickel].freeze
                
  attr_reader :name, :move

  def initialize
    @name = COMPNAME.sample
  end

  # def move
  #   @move = %w[Rock Paper Scissors].sample
  # end

  # Commented out for the moment as unsure whether it should sit here
  # Or in game class

end
