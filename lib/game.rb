class Game
  attr_reader :player_1, :player_2
  
  def initialize(params)
    params = init_defaults.merge(params)
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
  end

  private
  def init_defaults
    { player_2: AiPlayer.new }
  end
end
