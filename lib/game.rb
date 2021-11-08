class Game
  attr_reader :player,
              :computer,
              :player_score,
              :computer_score,
              :player_move,
              :computer_move,
              :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @result = ''
    @player_move = ''
    @computer_move = ''
    @player_score = 0
    @computer_score = 0
  end

  def player_input(move)
    @player_move = move.values.join('')
  end

  def rps
    @computer_move = @computer.choose_rps
    if (
         @player_move == 'Rock' && @computer_move == 'Scissors' ||
           @player_move == 'Paper' && @computer_move == 'Rock' ||
           @player_move == 'Scissors' && @computer_move == 'Paper'
       )
      @result = "#{@player.name} Wins!!!"
      @player_score += 1
    elsif (
          @player_move == 'Rock' && @computer_move == 'Rock' ||
            @player_move == 'Paper' && @computer_move == 'Paper' ||
            @player_move == 'Scissors' && @computer_move == 'Scissors'
        )
      @result = 'It is a Draw'
    else
      @result = 'Computer Wins!!!'
      @computer_score += 1
    end
  end
end
