class Game
  attr_reader :computer, :player, :selection, :result

  def initialize(player)
    @player = player
  end

  def computer
    choices = ['Rock', 'Paper', 'Scissors']
    @computer_selection = choices[rand(3)]
  end

  def player_selection(selection)
    @selection = selection
  end

  def result
    if @computer_selection == 'Rock'
      if @selection == 'Rock'
        'It is a tie!'
      elsif @selection == 'Paper'
        '#{@player} Wins!!!'
     else
        'Computer Wins!!!'
     end
    elsif @computer_selection == 'Paper'
      if @selection == 'Rock'
        'Computer Wins!!!'
      elsif @selection == 'Paper'
        'It is a tie!'
     else
        '#{@player} Wins!!!'
     end
    else
      if @selection == 'Rock'
        '#{@player} Wins!!!'
      elsif @selection == 'Paper'
        'Computer Wins!!!'
     else
        'It is a tie!'
     end
    end
  end

end