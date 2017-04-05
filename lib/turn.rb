class Turn

  attr_reader :player_name, :player_attack, :computer_attack

  def initialize(options)
    @player_name = options["player_name"]
    @player_attack = options["player_attack"]
    @computer_attack = options["computer_attack"]

  end
end