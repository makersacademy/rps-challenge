class Turn
  attr_reader :name, :choice, :opp_choice

  def initialize(options)
    @name = options["name"]
    @choice = options["choice"]
    @opp_choice = options["opp_choice"]
  end
end
