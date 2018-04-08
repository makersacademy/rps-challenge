class Game

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
    @computer_pick = ['Rock', 'Paper', 'Scissors']
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def choice(_weapon)

    if computer_choice == 'Rock'
      puts "It's a draw!"
    elsif computer_choice == 'Paper'
      puts "You Loose!"
    elsif computer_choice == 'Scissors'
      puts "You Win!"
  end
end

  def self.instance
    @game
  end

  def computer_choice
    @computer_draw = @computer_pick.sample
  end

end
