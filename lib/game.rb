class Game

  POSSIBLE_CHOICES = ['paper', 'rock' 'scissors']
  WINNING_HAND = {
    paper_rock: 'paper',
    rock_scissors: 'rock',
    paper_scissors: 'scissors',
  }

  attr_reader :player_1
  attr_writer :choice_1, :choice_2

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
    choice_1 == choice_2
  end

end