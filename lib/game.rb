class Game
  attr_reader :p1_name, :p2_name, :p1_move, :p2_move


  def self.create(p1_name, p2_name)
    @game = Game.new(p1_name, p2_name)
  end

  def self.instance
    @game
  end

  def initialize(p1_name, p2_name)
    @p1_name = p1_name
    @p2_name = p2_name
  end

  def move(p1_move, p2_move)
    @p1_move = p1_move
    p2_move == 'computer' ? @p2_move = ['Rock', 'Paper', 'Sissors'].sample : @p2_move = p2_move
  end

  def win_conditions
    return 'Drawn' if @p1_move == @p2_move
    return 'Won' if @p1_move == 'Rock' && @p2_move == 'Sissors'
    return 'Lost' if @p1_move == 'Rock' && @p2_move == 'Paper'
    return 'Won' if @p1_move == 'Paper' && @p2_move == 'Rock'
    return 'Lost' if @p1_move == 'Paper' && @p2_move == 'Sissors'
    return 'Lost' if @p1_move == 'Sissors' && @p2_move == 'Rock'
    return 'Won' if @p1_move == 'Sissors' && @p2_move == 'Paper'
  end

  def result
    return "#{p1_name.capitalize} has Won!" if win_conditions == 'Won'
    return "#{p2_name.capitalize} has Won!" if win_conditions == 'Lost'
    return "Its a draw!" if win_conditions == 'Drawn'
  end

end
