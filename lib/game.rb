class Game

  attr_reader :winner, :players_score, :computers_score

  def initialize
    @players_score = 0
    @computers_score = 0
  end

  def self.instance
    @game
  end

  def self.create
    @game = Game.new
  end

  def choose_winner(players_choice, computers_choice)
    if computers_choice == 'Rock'
      players_choice == 'Paper' ? @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Paper'
      players_choice == 'Scissors' ? @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Scissors'
      players_choice == 'Rock' ? @winner = 'player' : @winner = 'computer'
    end
  end

end
