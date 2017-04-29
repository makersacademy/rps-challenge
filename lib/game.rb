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

  def set_choice(choice)
    @choice = choice
  end

  def robo_choice(robo_choice = ['rock', 'paper', 'scissors'].sample)
    @robo_choice = robo_choice
  end

  def result
    if @choice == @robo_choice
      'It is a draw'
    elsif @robo_choice == 'rock' && @choice == 'scissors'
      'Robot wins'
    elsif @robo_choice == 'scissors' && @choice == 'paper'
      'Robot wins'
    elsif @robo_choice == 'paper' && @choice == 'rock'
      'Robot wins'
    elsif @choice == 'rock' && @robo_choice == 'scissors'
      'You win'
    elsif @choice == 'scissors' && @robo_choice == 'paper'
      'You win'
    elsif @choice == 'paper' && @robo_choice == 'rock'
      'You win'
    else
      'the logic has not worked'
    end
  end
end
