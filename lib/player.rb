#understands own name and choice
require_relative "rules"

class Player
  attr_reader :name, :choice

  def initialize args = {}
    args = defaults.merge(args)
    @name = args[:name]
    @choice = args[:choice].downcase.to_sym
  end

  def defaults
    {name: "Cpu",
    choice: Rules::WIN_MATRIX.keys.sample }
  end
end
