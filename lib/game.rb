class Game

  OPTIONS = [:rock, :paper, :scissors]

  attr_reader :player, :choice, :options, :random_choice

  def initialize(player)
    @player = player
    @options = OPTIONS
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def select_option(choice)
    @choice = choice.downcase.to_sym
  end

  def generate_rand_option
    @random_choice = options.sample
  end

end
