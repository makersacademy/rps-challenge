class Game

  attr_reader :player1, :player2

  OPTIONS = {rock: 1, paper: 2, scissors: 3, spock: 4, lizard: 5}

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def result(p1, p2)
    ans = ((OPTIONS[p1.to_sym]) - (OPTIONS[p2.to_sym])) % 5
    if (ans == 1) || (ans == 3)
      increase_score(player1)
      "#{player1.name} wins! #{p1.capitalize} beats #{p2.capitalize}"
    elsif ans == 0
      "Draw! #{p1.capitalize} draws #{p2.capitalize}"
    else
      increase_score(player2)
      "#{player2.name} wins! #{p2.capitalize} beats #{p1.capitalize}"
    end
  end

  def increase_score(player)
    player.win_point
  end

  def random
    ["rock", "paper", "scissors", "spock", "lizard"].sample
  end

end