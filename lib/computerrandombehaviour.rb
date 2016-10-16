class ComputerRandomBehaviour

  attr_reader :random_number

  def initialize
    @random_number = rand(0..2)
  end

end
