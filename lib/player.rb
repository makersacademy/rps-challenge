class Player
  attr_reader :name

  def initialize(name = "")
    @name = name
  end

  # might be able to get the below working, but best to move on and come back to it later

  # def self.create(name)
  #   @player = Player.new(name)
  # end
  #
  # def self.instance
  #   @player
  # end

end
