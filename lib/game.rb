class Game
  attr_reader :player_1, :player_2, :result, :current_turn
  
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @result = ''
    @current_turn = player_1
  end

  def next_turn
    @current_turn = player_2
  end

  def declare_winner(player_1_choice, player_2_choice)
    if player_1_choice == player_2_choice
      @result = "It's a draw!"
    elsif player_1_choice == 'Rock' && player_2_choice == 'Paper'
      @result = "#{@player_2.name} wins!"
    elsif player_1_choice == 'Scissors' && player_2_choice == 'Rock'
      @result = "#{@player_2.name} wins!"
    elsif player_1_choice == 'Paper' && player_2_choice == 'Scissors'
      @result = "#{@player_2.name} wins!"
    else 
      @result = "#{@player_1.name} wins!"
    end
  end
end