class Turn

  attr_reader :player_name, :player_choice, :cpu_choice

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @cpu_choice = options["cpu_choice"]
  end
end