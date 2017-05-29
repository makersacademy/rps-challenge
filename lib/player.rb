class Player
  attr_reader :name, :choice

  def initialize(options)
    @name = options[:name]
    @choice = options[:choice]
  end
end
