class Game

attr_reader :rand

  def initialize
    @rock = 'rock'
    @paper = 'Paper'
    @scissors = 'Scissors'
  end

  def rand
    @ai = ['Rock','Paper','Scissors'].sample
  end

  def rock
    return 'Loose' if @ai == 'Paper'
    return 'Won' if @ai == 'Scissors'
    return 'Draw' if @ai == 'Rock'
  end

  def paper
    return 'Loose' if @ai == 'Scissors'
    return 'Won' if @ai == 'Rock'
    return 'Draw' if @ai == 'Paper'
  end

  def scissors
    return 'Loose' if @ai == 'Rock'
    return 'Won' if @ai == 'Paper'
    return 'Draw' if @ai == 'Scissors'
  end

end
