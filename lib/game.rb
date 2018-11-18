class Game
  attr_reader :p1_name, :p2_name, :p1_move, :p2_move

  def self.create(p1_name, p2_name)
    @game = Game.new(p1_name, p2_name)
  end

  def self.instance
    @game
  end

  def initialize(p1_name, p2_name)
    @p1_name = p1_name.capitalize
    @p2_name = p2_name.capitalize
    @win_conditions = {
      'Rock' => ['Scissors', 'Lizard'],
      'Lizard' => ['Paper', 'Spock'],
      'Spock' => ['Scissors', 'Rock'],
      'Scissors' => ['Paper', 'Lizard'],
      'Paper' => ['Rock', 'Spock']  }
  end

  def move(p1_move, p2_move)
    @p1_move = p1_move
    p2_move == 'computer' ? @p2_move = ['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'].sample : @p2_move = p2_move
  end

  def result
    @win_conditions.each do |val|
      return "#{@p1_name} has Won!" if val[0].include?(@p1_move) && val[1].include?(@p2_move)
      return "#{@p2_name} has Won!" if val[0].include?(@p2_move) && val[1].include?(@p1_move)
      return "Its a draw!" if @p2_move == @p1_move
    end
  end

end
