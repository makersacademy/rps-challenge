class SingleGame

  attr_reader :player

  def self.create(player)
    @single_game = SingleGame.new(player)
  end

  def self.instance
    @single_game
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
    "#{player.name} won!"
  end

end
