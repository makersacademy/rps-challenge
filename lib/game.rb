require_relative './player'
class Game
  attr_reader :player1, :player2, :game, :player2_selection, :player1_selection, :win_matrix, :player1_result

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1.name
    @player2 = player2.name
    @win_matrix = {
      'paper' => {'scissors' => 'lose', 'paper' => 'tie',  'rock' => 'win'},
      'rock' => {'scissors' => 'win',  'paper' => 'lose', 'rock' => 'tie'},  
      'scissors' => {'scissors' => 'tie',   'paper' => 'win',  'rock' => 'lose'}
      }
  end

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end 

  def computer_choice
    @player2_selection = ['rock', 'paper', 'scissors'].sample
  end

  def player2_choice(input)
    @player2_selection = input
  end

  def player1_choice(input)
    @player1_selection = input 
  end

  def result
    #returns win/tie or lose from player 1 prespective
    @player1_result = @win_matrix[@player1_selection][@player2_selection]
  end

end