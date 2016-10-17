class DeepGreen

  attr_reader :weapon

  # def self.create
  #   @deep_green = DeepGreen.new
  # end
  #
  # def self.instance
  #   @deep_green
  # end

  def initialize
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  # def select_weapon
  #   @weapon = ['Rock', 'Paper', 'Scissors'].sample
  # end
end
