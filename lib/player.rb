#understands own name and choice
class Player
  attr_accessor :name, :choice
  def initialize args
    args = defaults.merge(args)
    @name = args[:name]
    @choice = args[:choice].to_sym
  end
  def defaults
    {name: "Cpu",
    choice: [:scissors,:paper,:rock].sample }
  end
end
