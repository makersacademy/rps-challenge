class Player
  attr_reader :name, :score
  attr_accessor :choice

  def initialize(name = "Computer")
    @name = name
    @choice = nil
    @score = 0
  end

  def you_won
    @score +=1
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
