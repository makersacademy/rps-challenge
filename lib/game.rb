class Game

  attr_reader :options, :player

  def initialize(player)
    @options = [:rock, :paper, :scissors]
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def declare_winner(random_option)
    if @player.option == random_option
      "nobody"
    elsif @player.option == :rock && random_option == :paper ||
          @player.option == :paper && random_option == :scissors ||
          @player.option == :scissors && random_option == :rock
      "computer"
    else
      @player.name
    end
  end

end
