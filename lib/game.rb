require_relative 'player'

class Game

WINNING_CHOICES = [[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Lizard], [:Lizard, :Spock], [:Spock, :Scissors], [:Scissors, :Lizard], [:Lizard, :Paper], [:Paper, :Spock],  [:Spock, :Rock], [:Rock, :Scissors]]

attr_reader :player1, :player2

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def winner
    if draw?
      'No one'
    elsif player_1_winner?
      @player1.name
    else
      @player2.name
    end
  end

  def draw?
    player_choices[0] == player_choices[1]
  end

  def player_1_winner?
    WINNING_CHOICES.include?(player_choices)
  end

  def player_choices
    [@player1.choice, @player2.choice]
  end

  def self.create(name1, name2)
    @game ||= Game.new(name1, name2)
  end

  def self.instance
    @game
  end
end
