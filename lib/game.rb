require_relative 'player'

class Game

attr_reader :player1
attr_reader :computer

  def initialize(player1 = 0, computer = 0)
    @player1 = player1
    @computer = computer
  end

  def rock
    x = computer_select
    if x == 'Rock'
      'Draw!'
    elsif x == 'Paper'
      @computer += 1
      'Loss!'
    else
      @player1 += 1
      'Victory!'
    end
  end

  def paper
    x = computer_select
    if x == 'Rock'
      @player1 += 1
      'Victory!'
    elsif x == 'Paper'
      'Draw!'
    else
      @player1 += 1
      'Loss!'
    end
  end

  def scissors
    x = computer_select
    if x == 'Rock'
      @computer += 1
      'Loss!'
    elsif x == 'Paper'
      @player1 += 1
      'Victory!'
    else
      'Draw!'
    end
  end

  def computer_select
    number = rand(3)
    if number == 0
      'Rock'
    elsif number == 1
      'Paper'
    else
      'Scissors'
    end
  end

  def score
    'Player ' + player1.to_s + ', Computer ' + computer.to_s
  end

end
