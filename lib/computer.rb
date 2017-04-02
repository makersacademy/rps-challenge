class Computer
  attr_reader :result

  def initialize
    @result = %w[Rock Paper Scissors].sample
  end

end
