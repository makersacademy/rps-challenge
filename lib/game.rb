class Game

  attr_reader :player_name, :player_item, :computer_item

  def initialize(args)
    @player_name = args["player_name"]
    # @player_item = options["player_item"]
    # @computer_item = options["computer_item"]
  end
end
