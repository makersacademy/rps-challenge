class Player
attr_reader :name, :move
  def initialize(args)
    @name = args
  end

  def choice(args)
    @move = args
  end
end
