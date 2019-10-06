class Game
attr_reader :player1, :player2, :single_player, :winning_choice

  def self.create(player1, player2 = Player.new('The Computer'))
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

  def random_move
    ["rock", "paper", "scissors"].sample
  end
    
  #winning mechanic does not work for player1
  def calculate_winner(player_choice)
    choices = %w(rock paper scissors).reverse
    index = choices.index(player_choice)
    @winning_choice = choices[index -1]
    winner
  end

  def winner
    if @player1.choice == winning_choice
      "#{@player1.name} wins!"
    elsif @player1.choice == @player2.choice
      "Draw!"
    elsif @player2.choice == winning_choice
      "#{@player2.name} wins!"
    end
  end
end

