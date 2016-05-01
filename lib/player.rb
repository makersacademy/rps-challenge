class Player
  attr_reader :selected

  def self.create
    @game = Player.new
  end

  def self.object
    @game
  end

  def rock
    @selected = "rock"
  end

  def paper
    @selected = "paper"
  end

  def scissors
    @selected = "scissors"
  end

  def selected
    @selected
  end
end
