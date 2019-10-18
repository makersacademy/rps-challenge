class Game
  attr_reader :player_1
  attr_accessor :computer_answer, :winner, :answer
  def initialize(player_1)
    @player_1 = player_1
    @computer_answers = ['Rock', 'Paper', 'Scissors']
    @winnner = ''
    @computer_answer = ''
  end

  def store_answer(answer)
    @answer = answer
  end

  def generate_computer_answer
    rand_num = rand(0..2)
    @computer_answer = @computer_answers[rand_num]
  end

  def outcome
    if @answer == 'Rock' && @computer_answer != 'Rock' && @computer_answer != 'Paper'
      @winner = @player_1.name
    elsif @answer == 'Paper' && @computer_answer != 'Paper' && @computer_answer != 'Scissors'
      @winner = @player_1.name
    elsif @answer == 'Scissors' && @computer_answer != 'Scissors' && @computer_answer != 'Rock'
      @winner = @player_1.name
    elsif @answer == @computer_answer
      @winner = 'draw'
    else
      @winner = 'Computer'
    end
  end

  def display_outcome
    if @winner == 'draw'
      return "It was a draw!"
    else
      return "#{@winner} won!"
    end
  end

end
