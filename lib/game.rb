require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :score_1, :score_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @score_1 = 0
    @score_2 = 0
  end

  def outcome
    if player_1.choice == "Scissors" && player_2.choice == "Scissors"
      "It's a draw!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Rock"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Paper"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Lizard"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Spock"
      @score_2 += 1
      "#{player_2.name} wins!"
    ###
    elsif player_1.choice == "Rock" && player_2.choice == "Rock"
      "It's a draw!"
    elsif player_1.choice == "Rock" && player_2.choice == "Paper"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Rock" && player_2.choice == "Scissors"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Rock" && player_2.choice == "Lizard"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Rock" && player_2.choice == "Spock"
      @score_2 += 1
      "#{player_2.name} wins!"
    ###
    elsif player_1.choice == "Paper" && player_2.choice == "Rock"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Paper" && player_2.choice == "Paper"
      "It's a draw!"
    elsif player_1.choice == "Paper" && player_2.choice == "Scissors"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Paper" && player_2.choice == "Lizard"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Paper" && player_2.choice == "Spock"
      @score_1 += 1
      "#{player_1.name} wins!"
    ###
    elsif player_1.choice == "Lizard" && player_2.choice == "Rock"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Lizard" && player_2.choice == "Paper"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Lizard" && player_2.choice == "Scissors"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Lizard" && player_2.choice == "Lizard"
      "It's a draw!"
    elsif player_1.choice == "Lizard" && player_2.choice == "Spock"
      @score_1 += 1
      "#{player_1.name} wins!"
    ###
    elsif player_1.choice == "Spock" && player_2.choice == "Rock"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Spock" && player_2.choice == "Paper"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Spock" && player_2.choice == "Scissors"
      @score_1 += 1
      "#{player_1.name} wins!"
    elsif player_1.choice == "Spock" && player_2.choice == "Lizard"
      @score_2 += 1
      "#{player_2.name} wins!"
    elsif player_1.choice == "Spock" && player_2.choice == "Spock"
      "It's a draw!"
    end
  end
end
