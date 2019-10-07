class Game
attr_reader :player1, :player2, :single_player, :winning_choice

  def self.create(player1 = Player.new(player), player2 = Player.new('The Computer'))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def single_player?
    @single_player = true if @player2.name == 'The Computer'
  end
    
  def calculate_winner
    choices = %w(rock paper scissors).reverse
    index = choices.index(@player2.choice)
    @winning_choice = choices[index -1]
    winner
  end

  def winner
    if @player1.choice == @winning_choice
      "#{@player1.name} wins!"
    elsif @player1.choice == @player2.choice
      "Draw!"
    else
      "#{@player2.name} wins!"
    end
  end
end
