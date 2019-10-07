class Computer
  attr_reader :computer_choice

  def random
    @computer_choice = %w[rock paper scissors].sample
  end
end
