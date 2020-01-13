require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
  
  def make_move(move)
    @players.first.make_move(move)
  end

  def switch_turns
    @players.rotate!
  end

  def winner
    # moves = [player_1.move, player_2.move]
    # moves.each { |move|
    # if moves.include?('rock') && moves.include?('scissors')
    #   move if move == 'rock'
    # elsif moves.include?('rock') && moves.include?('paper')
    #   'paper'
    # elsif moves.include?('scissors') && moves.include?('paper')
    #   'scissors'
    # end

    if @player_1.move == 'Rock' && @player_2.move == 'Scissors' ||
      @player_1.move == 'Paper' && @player_2.move == 'Rock' ||
      @player_1.move == 'Scissors' && @player_2.move == 'Paper'
      
      @player_1
    else
      @player_2
    end
  end

  def tie?
    @player_1.move == @player_2.move
  end

end
