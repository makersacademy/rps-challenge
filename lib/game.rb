class Game

  attr_reader :user, :computer

  def initialize(user, computer = Computer.new)
    @user = user
    @computer = computer
  end

  def self.create(user, computer)
    @game = Game.new(user, computer)
  end

  def self.instance
    @game
  end

end