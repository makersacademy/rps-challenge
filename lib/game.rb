class Game 

  attr_reader :player_move, :cpu_move, :move_list, :name

  def initialize(name)
    @name = name
    @cpu_move = nil
    @player_move = nil
    @move_list = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }
  end

  def cpu
    @cpu_move = ['rock', 'paper', 'scissors'].sample
  end

  def player(move)
    @player_move = move
  end

  def outcome
    if @cpu_move == @player_move
      return 'draw'
    elsif (@move_list.fetch(@cpu_move)) == @player_move
      return 'lose'
    else 
      return 'win'
    end
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

end