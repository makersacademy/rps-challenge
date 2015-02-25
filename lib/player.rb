class Player
  
  attr_reader :name, :shape

  def initialize(options={})
    @name = options.fetch :name, nil
  end

  def pick(shape)
    @shape = shape
  end
end









