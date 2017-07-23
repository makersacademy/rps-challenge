class Game

  attr_reader :player_name, :player_choice, :computer_choice, :winner, :result

  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
    @result = ""
  end

  def winner?(player = @player_choice, computer = @computer_choice)
    string = ''
    while (player == 'Scissors' || player == 'Rock' || player == 'Paper')
      if (player == computer)
        string += "We have a draw!"
      elsif (player == 'Rock' && computer == 'Scissors')
        string += "#{@player_choice} beats #{@computer_choice}: #{@player_name} wins!"
      elsif (player == 'Rock' && computer == 'Paper')
        string += "#{@player_choice} loses to #{@computer_choice}: Computer wins!"
      elsif (player == 'Paper' && computer == 'Rock')
        string += "#{@player_choice} beats #{@computer_choice}: #{@player_name} wins!"
      elsif (player == 'Paper' && computer == 'Scissors')
        string += "#{@player_choice} loses to #{@computer_choice}: Computer wins!"
      elsif (player == 'Scissors' && computer == 'Paper')
        string += "#{@player_choice} beats #{@computer_choice}: #{@player_name} wins!"
      elsif (player == 'Scissors' && computer == 'Rock')
        string += "#{@player_choice} loses to #{@computer_choice}: Computer wins!"
      end
      break
    end
    @result = string
  end
end
