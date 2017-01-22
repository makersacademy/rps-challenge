class Computer
  attr_reader :comp_choice

  def initialize
    @comp_choice = [:rock,:paper,:scissors].sample.to_s
  end
end
