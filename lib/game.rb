class Game
  def initialize(player)
    @player = player
    @rps = ['rock', 'paper', 'scisors']
  end

  def select
    player_selection = @rps.sample
    ia_selection = @rps.sample
  end

  def who_wins
    
  end
end