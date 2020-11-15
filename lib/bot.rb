class Bot
  RAND_NAME = %w[Scandium
                Titanium
                Vanadium
                Chromium
                Manganese
                Iron
                Cobalt
                Nickel].freeze
                
  attr_reader :name

  def initialize
    @name = RAND_NAME.sample
  end

end
