class Game
  attr_reader :player, :choice, :robo_choice

  def initialize(player)
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
    @choice = nil
  end

  def self.current_game
    @game
  end

  def define_choice(choice)
    @choice = choice
  end

  def robo_choice(robo_choice = ['rock', 'paper', 'scissors'].sample)
    @robo_choice = robo_choice
  end

  def result
    if @choice == @robo_choice
      'It is a draw'
    elsif robo_win?
      'Robot wins'
    elsif you_win?
      'You win'
    else
      'the logic has not worked'
    end
  end

  def robo_win?
    @robo_choice == 'rock' && @choice == 'scissors' ||
    @robo_choice == 'scissors' && @choice == 'paper' ||
    @robo_choice == 'paper' && @choice == 'rock'
  end

  def you_win?
    @choice == 'rock' && @robo_choice == 'scissors' ||
    @choice == 'scissors' && @robo_choice == 'paper' ||
    @choice == 'paper' && @robo_choice == 'rock'
  end
end
