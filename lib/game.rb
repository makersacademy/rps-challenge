class Game

  attr_reader :name, :choice, :bot_choice

  def initialize(options)
    @name = options["name"]
    @choice = options["choice"]
    @bot_choice = options["bot_choice"]
  end
end
