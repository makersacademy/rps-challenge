class Game

  attr_reader :player1, :player2, :player_1_tally, :player_2_tally, :game_history, :winner, :declare_winner, :player2_selection, :player1_selection, :player1_selection_method

  class << self
    attr_accessor :game
  end

  def self.store(name)
    @game = Game.new(Player.new(name))
  end

  def initialize(name1)
    @player1 = Player.new(name1)
    @player_1_tally = 0
    @player_2_tally = 0
    @game_history = []
    @winner = nil
  end

  def declare_winner
    @player1_selection = @player1_selection
    selector = ['rock', 'paper', 'scissors'].sample
    @player2_selection = selector
    if @player1_selection == @player2_selection
      @winner = "The game was a draw!"
    elsif @player1_selection == 'rock' && @player2_selection == 'paper'
      @winner = @player1.name
    elsif @player2_selection == 'rock' && @player1_selection == 'paper'
      @winner = 'The computer'
    elsif @player1_selection == 'scissors' && @player2_selection == 'paper'
      @winner = @player1.name
    elsif @player2_selection == 'scissors' && @player1_selection == 'paper'
      @winner = 'The computer'
    elsif @player1_selection == 'rock' && @player2_selection == 'scissors'
      @winner = @player1.name
    elsif @player2_selection == 'rock' && @player1_selection == 'scissors'
      @winner = 'The computer'
    end
  end

  def player1_selection_method(choice)
    @player1_selection = choice
  end

end
