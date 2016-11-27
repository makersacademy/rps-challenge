class Game
  @game
  OPTIONS = [:rock, :paper, :scissors]

  def self.create
    @game = self.new
  end

  def self.instance
    @game
  end

  def play
    OPTIONS.sample
  end

end
