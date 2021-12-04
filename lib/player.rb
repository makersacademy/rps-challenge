class Player
  def initialize(name:, selected:)
    @player_name = name
    @player_selected = selected.to_sym
  end

  def name
    @player_name
  end

  def selected 
    @player_selected
  end
end