class Game

  attr_reader :player, :computer, :score, :winner

  def initialize(player, computer, scoreboard)
    @score = scoreboard
    @player = player
    @computer = computer
  end

  def self.instance
    @game
  end

  def self.create(player, computer, scoreboard)
    @game = Game.new(player, computer, scoreboard)
  end

  def choose_winner(players_choice, computers_choice)
    if players_choice == computers_choice
      @winner = nil
    elsif computers_choice == 'Rock'
      players_choice == 'Paper' ? @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Paper'
      players_choice == 'Scissors' ? @winner = 'player' : @winner = 'computer'
    elsif computers_choice == 'Scissors'
      players_choice == 'Rock' ? @winner = 'player' : @winner = 'computer'
    end
    # @winner = 'player' if computers_choice == 'Rock' && players_choice == 'Paper'
    # @winner = 'player' if computers_choice == 'Paper' && players_choice == 'Scissors'
    # @winner = 'player' if computers_choice == 'Scissors'

  end

end
