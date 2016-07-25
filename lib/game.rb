class Game

attr_reader :human_player_name, :human_player_choice, :bot_choice

  def initialize(args)
    @human_player_name = args["human_player_name"]
    @human_player_choice = args["human_player_choice"]
    @bot_choice = args["bot_choice"]
  end
end
