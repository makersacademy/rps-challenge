
class Player

  attr_reader :name, :player_options

  def initialize(name, player_options = Game::DEFAULT_OPTIONS )
    @name = name
    @player_options = player_options
  end

  def player_choice
    @player_options.sample
  end


end
