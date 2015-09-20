class Game
  attr_reader :options
  attr_accessor :choice1, :choice2

  def initialize player1, player2
    @options = { 'r'=>'s', 's'=>'p', 'p'=>'r' }
    @player1, @player2 = player1, player2
    @choice1, @choice2 = '', ''
  end

  def all_choices?
    if (@choice1 != '') && (@choice2 != '')
      true
    else
      false
    end
  end

  def play choice1, choice2
    if choice1 == choice2
      return 'Draw!'
    elsif @options[choice1] == choice2
      return "#{@player1} wins"
    else
      return "#{@player2} wins"
    end
  end

end
