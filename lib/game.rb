class Game
  attr_reader :player1, :move, :cpu_move
  def initialize(player1)
    @player1 = player1
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def select_move(move)
    @move = move
  end

  def cpu_move
      @cpu_move = ['Rock', 'Paper', 'Scissors'].sample
  end

   game_logic = {
    'Rock' => { 'Rock' => 'Draw', 'Paper' => 'Lose', 'Sciccors' => 'Win'}
  }


end
