class Game
  attr_reader :player_1, :player_2, :result_message

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @answers = {'Rock' => { Rock: nil, Paper: false, Scissors: true, Lizard: true, Spock: false },
      'Paper' => { Rock: true, Paper: nil, Scissors: false, Lizard: false, Spock: true },
      'Scissors' => { Rock: false, Paper: true, Scissors: nil, Lizard: true, Spock: false },
      'Lizard' => { Rock: false, Paper: true, Scissors: false, Lizard: nil, Spock: true },
      'Spock' => { Rock: true, Paper: false, Scissors: true, Lizard: false, Spock: nil }
    }
  end

  def random_choice
    computer_random = [:Rock, :Paper, :Scissors, :Lizard, :Spock]
    @player_2.choice = computer_random[rand(4)]
  end

  def result
    if @answers[@player_1.choice][@player_2.choice] == true
      @player_1.score += 1
      @result_message = 'You won!'
    elsif @answers[@player_1.choice][@player_2.choice] == false
      @player_2.score += 1
      @result_message = 'You lost!'
    else
      @result_message = 'You draw!'
    end
  end

  def reset_game
    @player_1.score = 0
    @player_2.score = 0
    @result_message = nil
    @player_1.choice = nil
    @player_2.choice = nil
  end
end
