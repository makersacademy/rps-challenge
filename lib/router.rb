class Router

  def initialize(game)
    @game = game
  end

  def route(choice)
    if @game.player_one.has_chosen?
      @game.player_two.choose(choice)
    else
      @game.player_one.choose(choice)
      return "/game" if @game.mode == "Multiplayer"
      @game.player_two.choose_random
    end
    return "/result"
  end

end
