class Game

attr_reader :player, :options

  def initialize(player)
    @player = player
    @options = ["Rock", "Paper", "Scissors"]
  end

  def play(option)
    options.select {|option|}
    option
  end

end