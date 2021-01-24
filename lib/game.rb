class Game

  attr_reader :player, :winner
  attr_accessor :opponent

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def win_lose_draw
    if player.choice == "Rock" && opponent.choice == "Scissors"
      @winner = :player
    elsif player.choice == "Paper" && opponent.choice == "Rock"
      @winner = :player
    elsif player.choice == "Scissors" && opponent.choice == "Paper"
      @winner = :player
    elsif player.choice == "Rock" && opponent.choice == "Paper"
      @winner = :opponent
    elsif player.choice == "Paper" && opponent.choice == "Scissors"
      @winner = :opponent
    elsif player.choice == "Scissors" && opponent.choice == "Rock"
      @winner = :opponent
    else
      @winner = :draw
    end
  end

  # def win_lose_draw
  #   case player.choice
  #   when "Rock" && opponent.choice == "Scissors" then @winner = :player
  #   when "Rock" && opponent.choice == "Paper" then @winner = :opponent
  #   when "Rock" && opponent.choice == "Rock" then @winner = :draw
  #   when "Paper" && opponent.choice == "Rock" then @winner = :player
  #   when "Paper" && opponent.choice == "Scissors" then @winner = :opponent
  #   when "Paper" && opponent.choice == "Paper" then @winner = :draw
  #   when "Scissors" && opponent.choice == "Paper" then @winner = :player
  #   when "Scissors" && opponent.choice == "Rock" then @winner = :opponent
  #   when "Scissors" && opponent.choice == "Scissors" then @winner = :draw
  #   end
  # end

end
