class Game

  attr_reader :player, :selection, :computer_selection, :end_result

  CHOICE = ['Rock', 'Paper', 'Scissors']

  BEATS = { 'Rock'     => 'Paper',
            'Paper'    => 'Scissors',
            'Scissors' => 'Rock'
          }

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
    @end_result = 'lost'
    @end_result = 'tied' if @selection == @computer_selection
    @end_result = 'won' if @selection == BEATS[@computer_selection]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
