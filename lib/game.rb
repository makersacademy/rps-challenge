class Game

  attr_reader :player, :outcome

  PLAYER_WINS =
  [[:rock, :scissors],
  [:scissors, :paper],
  [:paper, :rock]]

  def initialize(player,npc = Npc.new)
    @player = player
    @npc = npc
    @outcome = nil
  end

  def play(player_choice)
    game_scenario = game_array(player_choice)
    if game_scenario[0] == game_scenario[1]
    @outcome = [:tie, game_scenario[0], game_scenario[1]]
    elsif PLAYER_WINS.include?(game_scenario)
    @outcome = [:win, game_scenario[0], game_scenario[1]]
    else
    @outcome = [:lose, game_scenario[0], game_scenario[1]]
    end
  end

  private

  def game_array(player_choice)
    [@player.choose(player_choice), @npc.choose]
  end


end
