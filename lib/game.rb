class Game
  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def player
    @player
  end

  def self.get
    @game
  end

  @game = Game.get

  def user_hand(user_hand)
    @user_hand = user_hand
  end

  def machine_hand
    @machine_hand = ["Rock", "Paper", "Scissors"].sample
  end

  def result(machine_hand)
    @machine_hand = machine_hand
    if @user_hand == @machine_hand
      "Draw!"
    elsif (@user_hand == "Rock" && @machine_hand == "Paper") || (@user_hand == "Paper" && @machine_hand == "Scissors") || (@user_hand == "Scissors" && @machine_hand == "Rock")
      "Machine wins!"
    else
      "You win!"
    end
  end

end
