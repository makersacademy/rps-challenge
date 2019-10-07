class Computer
  # attr_reader :random

  def random_move
    index = Kernel.rand(0..2)
    # @random = ['Rock', 'Paper', 'Scissors'][random_number]
    ['Rock', 'Paper', 'Scissors'][index]
  end
end
