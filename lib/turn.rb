class Turn
  attr_reader :player_name, :player_tool, :bot_tool

  def initialize(options)
    @player_name = options["player_name"]
    @player_tool = options["player_tool"]
    @bot_tool = options["bot_tool"]
  end
end
