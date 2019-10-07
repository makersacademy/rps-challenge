class Game

  attr_reader :options

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
    # { 1 => "Rock", 2 => "Paper", 3 => "Scissors"
  end

  # def self.create
  #   @game = Game.new
  # end

  # def self.instance
  #  @game
  # end

  def choice
    @options.sample
  end

end
