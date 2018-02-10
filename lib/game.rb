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
    ["scissors", "paper", "rock"].sample
  end

  def calculate_result(cw, pw)
    if cw == "paper" && pw == "rock" || cw == "rock" && pw == "scissors" || cw == "scissors" && pw == "paper" then
      "Computer won"
    elsif pw == "paper" && cw == "rock" || pw == "rock" && cw == "scissors" || pw == "scissors" && cw == "paper" then
      "Player won"
    else
      "It's a draw"
    end
  end

end
