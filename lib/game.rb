
class Game

  attr_reader :player1_choice, :player2_choice, :computer_choice

  def initialize
    # @computer_choice = Computer.new.choice
  end

  def set_player1_choice(choice)
    @player1_choice= choice
  end

  def set_player2_choice(choice)
    @player2_choice = choice
  end

  def winner
    if @player1_choice == @player2_choice
      'No one'
    elsif @player1_choice == 'Rock' && @player2_choice == 'Scissors'
      'Player 1'
    elsif @player1_choice == 'Paper' && @player2_choice == 'Rock'
      'Player 1'
    elsif @player1_choice == 'Scissors' && @player2_choice == 'Paper'
      'Player 1'
    else
      'Player 2'
    end
  end

  def first_player(name)
    @player1_name = name
  end

  def second_player(name)
    @player2_name = name
  end

  def self.create
    @game ||= Game.new
  end

  def self.instance
  @game
  end
end
