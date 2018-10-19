require_relative 'computer'

class Game

attr_reader :marketeer, :computer_choice

  def initialize(marketeer)
    @marketeer = marketeer
    @computer_choice = Computer.new.choice
  end

end
