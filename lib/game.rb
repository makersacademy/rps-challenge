class Game
  
  attr_reader :user, :weapons, :response
  attr_accessor :move

  def initialize(user)
    @user = user
    @weapons = ["rock", "paper", "scissors"]
    @move = nil
    @response = nil
  end

  def attack(weapon)
    weapon
    @move = weapon
  end

  def random
    rand(0..2)
  end

  def receive_attack
    response = @weapons[random]
    @response = response
  end

end