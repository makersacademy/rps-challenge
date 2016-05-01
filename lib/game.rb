class Game
  attr_reader :player
  attr_reader :player_move
  attr_reader :computer
  attr_reader :computer_move

  def initialize(player)
    @player = player
    @computer = Computer.create
    @winning_moves = {
      :ROCK => :SCISSORS,
      :SCISSORS => :PAPER,
      :PAPER => :ROCK
    }
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(move)
    @player_move = move.to_sym
  end

  def computer_choice
    @computer_move = [:ROCK, :PAPER, :SCISSORS].sample
  end

  def result
    moves = {@player_move => @computer_move}
    if @player_move == @computer_move
      p 'draw'
    elsif @winning_moves[@player_move] == @computer_move
      p 'win'
    else
      p 'lose'
    end
  end


end
