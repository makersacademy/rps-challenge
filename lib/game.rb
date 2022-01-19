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

  # def result
  #   if @computer_selection == 'Rock'
  #     if @selection == 'Rock'
  #       'Result: It is a tie!'
  #     elsif @selection == 'Paper'
  #       'Result: Player Wins!!!'
  #    else
  #       'Result: Computer Wins!!!'
  #    end
  #   elsif @computer_selection == 'Paper'
  #     if @selection == 'Rock'
  #       'Result: Computer Wins!!!'
  #     elsif @selection == 'Paper'
  #       'Result: It is a tie!'
  #    else
  #       'Result: Player Wins!!!'
  #    end
  #   else
  #     if @selection == 'Rock'
  #       'Result: Player Wins!!!'
  #     elsif @selection == 'Paper'
  #       'Result: Computer Wins!!!'
  #    else
  #       'Result: It is a tie!'
  #    end
  #   end
  # end

  def self.create(player)
    if @instance
      return @instance
    end
    @instance = Game.new(player)
    return @instance
  end

  def self.instance
    return @instance
  end

  def result
    if (@computer_selection == 'Rock' && @selection == 'Rock') || (@computer_selection == 'Paper' && @selection == 'Paper') || (@computer_selection == 'Scissors' && @selection == 'Scissors')
      'Result: It is a tie!'
    elsif (@computer_selection == 'Rock' && @selection == 'Paper') || (@computer_selection == 'Paper' && @selection == 'Scissors') || (@computer_selection == 'Scissors' && @selection == 'Rock')
      'Result: Player Wins!!!'
    elsif (@computer_selection == 'Rock' && @selection == 'Scissors') || (@computer_selection == 'Paper' && @selection == 'Rock') || (@computer_selection == 'Scissors' && @selection == 'Paper')
      'Result: Computer Wins!!!'
    end
  end

end