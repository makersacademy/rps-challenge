class Game
  attr_reader :options, :player1, :player2
  attr_accessor :choice1, :choice2

  def initialize player1, player2
    @options = { 'r'=>'s', 's'=>'p', 'p'=>'r' }
    @player1, @player2 = player1, player2
    @choice1, @choice2 = '', ''
  end

  def all_choices?
    (@choice1 != '') && (@choice2 != '')
  end

  def play
    if @choice1 == @choice2
      'Draw!'
    elsif @options[@choice1] == @choice2
      "#{@player1} wins"
    else
      "#{@player2} wins"
    end
  end

end
