class Game

  attr_reader :player_name, :player_choice, :computer_choice, :winner

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
  end

  def winner(player = @player_choice, computer = @computer_choice)
    string = ''
    while (player == 'Scissors' || player == 'Rock' || player == 'Paper')
      if (player == computer)
        string += 'We have a draw!'
      elsif (player = 'Rock' && computer == 'Scissors')
        string += 'Rock beats Scissors: ' + @player_name + ' wins!'
      elsif (player = 'Rock' && computer == 'Paper')
        string += 'Rock loses to Paper: Computer wins!'
      elsif (player = 'Paper' && computer == 'Rock')
        string += 'Paper beats Rock: ' + @player_name + ' wins!'
      elsif (player = 'Paper' && computer == 'Scissors')
        string += 'Paper loses to Scissors: Computer wins!'
      elsif (player = 'Scissors' && computer == 'Paper')
        string += 'Scissors beats Paper: ' + @player_name + ' wins!'
      elsif (player = 'Scissors' && computer == 'Rock')
        string += 'Scissors loses to Rock: Computer wins!'
      end
      break
    end
    string
  end
end
