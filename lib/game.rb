class Game

  attr_reader :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def computer_weapon
    ['scissors', 'paper', 'rock'].sample
  end

  def calculate_result(cw, pw)
    return 'Computer won' if cw == 'scissors' && pw == 'paper'
    return 'Computer won' if cw == 'paper' && pw == 'rock'
    return 'Computer won' if cw == 'rock' && pw == 'scissors'
    return 'Draw!' if cw == pw
    'Player won!'
  end

end
