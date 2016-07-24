class Game

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  attr_reader :player_choice, :computer_choice

  def initialize(player_1)
    @players = [player_1]
    @beats = {
              Rock: {Scissors: "crushes"},
              Paper: {Rock: "covers"},
              Scissors: {Paper: "cuts"}
            }
  end

  def player_1
    @players.first
  end

  def player_throw(choice)
    @player_choice = choice
  end

  def computer_throw
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def computer_choice
    @computer_choice = computer_throw
  end

  def conclusion
    return 'It was a draw!' if draw?
    player_wins? ? 'You Win!' : 'You Lose!'
  end

  def result
    outcome.join(' ')
  end

  private

  attr_reader :beats

  def outcome
    if player_wins?
      [player_choice, beats[player_choice.to_sym][computer_choice.to_sym], computer_choice]
    else
      [computer_choice, beats[computer_choice.to_sym][player_choice.to_sym], player_choice]
    end
  end

  def player_wins?
    beats[player_choice.to_sym][computer_choice.to_sym]
  end


  def draw?
    computer_choice == player_choice
  end

end
