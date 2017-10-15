
class Game

  def initialize(player, player_choice)
    @player = player
    @player_choice = player_choice
  end

  #def player_choice
    #@player_choice
  #end

  def game_choice
    @game_choice = [:rock, :paper, :scissors].sample
  end


end
