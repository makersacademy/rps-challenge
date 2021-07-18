

class Game

  attr_reader :computer_choices, :player

  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def computer_choice
    @computer_choices.sample
  end

  def result(player_choice, computer_choice)
    
    if player_choice == computer_choice
      return 'It\'s a draw!'
    end 
    
    choices = @computer_choices.reverse
    index = choices.index(player_choice)
    winning_choice = choices[index - 1] 
    
    if computer_choice == winning_choice
      'Computer wins!'
    else
      "#{@player.name} wins!"
    end
  end


end