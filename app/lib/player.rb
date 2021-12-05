class Player
  def initialize(name:, choice:)
    @player_name = name
    @player_choice = choice.to_sym
  end

  def name
    @player_name
  end

  def choice 
    @player_choice
  end
end
