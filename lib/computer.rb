class Computer
  attr_reader :wins

  HANDICAP = 0
  # @name = nil

  # def self.instance
  #   @name
  # end
  #
  # def self.instance=(value)
  #   @name = value
  # end

  def initialize(wins = HANDICAP)
    @wins = wins
    # self.class.instance = self
  end
end
