class Game
  CHOICES = [
    "Rock",
    "Paper",
    "Scissors"
  ]
  def self.start(player)
    @current_game = Game.new(player)
  end
  def self.current_game
    @current_game
  end

  attr_reader :name
  def initialize(player)
    @name = player
  end

  def player_choice(choice)
    @player_hand = choice
  end

  def outcome
    cpu_choice
    if @cpu == "Rock" && @player_hand == "Scissors"
      output = "/Lose"
    elsif @cpu == "Rock" && @player_hand == "Paper"
      output = "/Win"
    elsif @cpu == "Scissors" && @player_hand == "Paper"
      output = "/Lose"
    elsif @cpu == "Scissors" && @player_hand == "Rock"
      output = "/Win"
    elsif @cpu == "Paper" && @player_hand == "Rock"
      output = "/Lose"
    elsif @cpu == "Paper" && @player_hand == "Scissors"
      output = "/Win"
    else
      output = "/Draw"
    end


  end

  private
  def cpu_choice
    @cpu = CHOICES.sample
  end
end
