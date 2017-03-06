class Player

  attr_reader :player_name, :player_choice

  def initialize(player_name)
    @player_name = player_name
    @player_choice
  end

  def choice(move)
    @player_choice = move.to_sym
  end
end
