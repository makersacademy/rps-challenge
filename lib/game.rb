
class Game

  attr_reader :player, :selection, :computer_selection, :outcome

CHOICE = ['rock', 'paper', 'scissors']

BEATS = { 'rock'     => 'paper',
          'paper'    => 'scissors',
          'scissors' => 'rock'}

  def initialize(player)
    @player = player
  end

  def rock
    @selection = CHOICE[0]
  end

  def paper
    @selection = CHOICE[1]
  end

  def scissors
    @selection = CHOICE[2]
  end

  def computer
    @computer_selection = CHOICE[rand(3)]
  end

  def result
    @outcome = 'lost'
    @outcome = 'tied' if @selection == @computer_selection
    @outcome = 'won' if @selection == BEATS[@computer_selection]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
