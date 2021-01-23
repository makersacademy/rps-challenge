class Game

  attr_reader :player
  attr_accessor :opponent, :winner

  def initialize(player)
    @player = player
    @winner = "test"
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def win_lose_draw
    if player.choice == "Rock" && opponent.choice == "Scissors"
      @winner = @player.name
    elsif player.choice == "Rock" && opponent.choice == "Paper"
      @winner = "Computer"
    elsif player.choice == "Rock" && opponent.choice == "Rock"
      @winner = "Draw"
    elsif player.choice == "Scissors" && opponent.choice == "Scissors"
      @winner = "Draw"
    elsif player.choice == "Scissors" && opponent.choice == "Paper"
      @winner = @player.name
    elsif player.choice == "Scissors" && opponent.choice == "Rock"
      @winner = "Computer"
    elsif player.choice == "Paper" && opponent.choice == "Scissors"
      @winner = "Computer"
    elsif player.choice == "Paper" && opponent.choice == "Paper"
      @winner = "Draw"
    elsif player.choice == "Paper" && opponent.choice == "Rock"
      @winner = @player.name
    end
  end

end
