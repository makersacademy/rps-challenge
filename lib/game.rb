class Game

  POSSIBLE_CHOICES = ['Paper', 'Rock', 'Scissors']
  WINNING_HAND = {
    paper_rock: 'Paper',
    rock_scissors: 'Rock',
    paper_scissors: 'Scissors',    
  }

  attr_reader :player_1

  class << self
    def new_game(player_1)
      @current_game = Game.new(player_1)
    end

    def current_game
      @current_game
    end
  end

  def initialize(player_1)
    @player_1 = player_1
    @current_game
  end

  def choose(choice)
    player_1.pick(choice)
  end

  def computer_choice
    POSSIBLE_CHOICES.sample
  end

  def play(choice_1, choice_2)
    if !tied_game?(choice_1, choice_2)
      choices = [choice_1, choice_2].sort.join('_').to_sym
      WINNING_HAND[choices]
    end
  end 

  def tied_game?(choice_1, choice_2)
    if player_1.choice == computer_choice 
      @tied_game == true
    end
  end

  def result 
    hands = [player_1.choice, computer_choice].sort.join('_').to_sym
    WINNING_HAND[hands]
  end

  def print_result
    @tied_game ? "Tied game!" : result
  end

end