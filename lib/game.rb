class ComputerGame
  attr_reader :choice

  def initialize
    @choice = ['rock', 'paper', 'scissor']

    def choice
      @choice.sample
    end
  end
end