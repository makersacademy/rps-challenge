class Game

  attr_reader :player

  PLAYER_WINS =
  [[:rock, :scissors],
  [:scissors, :paper],
  [:paper, :rock]]

  def initialize(player,npc = Npc.new)
    @player = player
    @npc = npc
  end

  def play(player_choice)
    game_scenario = game_array(player_choice)
    return [:tie, game_scenario[0], game_scenario[1]] if game_scenario[0] == game_scenario[1]
    return [:win, game_scenario[0], game_scenario[1]] if PLAYER_WINS.include?(game_scenario)
    [:lose, game_scenario[0], game_scenario[1]]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  private

  def game_array(player_choice)
    [@player.choose(player_choice), @npc.choose]
  end


end
