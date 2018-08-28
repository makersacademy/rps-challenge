class Game

  attr_reader :number_of_players, :result, :move_counter

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
    # Establish @number_of_players here instead of initialize?
  end

  def self.instance
    @game
  end

  def initialize(number_of_players, p_1 = Player.new, p_2 = Player.new)
    @number_of_players = number_of_players
    @players = [p_1, p_2]
    @move_counter = 1 # Track if player1 turn or player2 turn
  end

  def save_name(name1, name2 = nil)
    @players.first.save_name(name1)
    !name2 ? @players.last.save_name('Rival') : @players.last.save_name(name2)
  end

  def save_move(move, player_number)
    @players.first.save_move(move) if player_number == 1
    @players.last.save_move(move) if player_number == 2
    @players.last.save_move(random_move) if @number_of_players == 1
    @move_counter += 1
  end

  def return_name(number)
    return @players.first.name if number == 1
    return @players.last.name if number == 2
  end

  def return_move(number)
    return @players.first.move if number == 1
    return @players.last.move if number == 2
  end

  def determine_winner
    @move_counter = 1 # reset to initialized value
    player1 = return_move(1)
    player2 = return_move(2)
    # Not sure how to make the evaluation below more simple
    if player1 == player2
      @result = "It was not very effective..."
    elsif player1_wins(player1, player2)
      @result = "#{return_name(1)} used a super effective move!"
    elsif player2_wins(player1, player2)
      @result = "#{return_name(2)} used a super effective move!"
    end
  end

  private

  def random_move
    ["Bulbasaur", "Squirtle", "Charmander"].sample
  end

  def player1_wins(player1, player2)
    (player1 == 'Bulbasaur' && player2 == 'Squirtle') ||
    (player1 == 'Squirtle' && player2 == 'Charmander') ||
    (player1 == 'Charmander' && player2 == 'Bulbasaur')
  end

  def player2_wins(player1, player2)
    (player1 == 'Bulbasaur' && player2 == 'Charmander') ||
    (player1 == 'Squirtle' && player2 == 'Bulbasaur') ||
    (player1 == 'Charmander' && player2 == 'Squirtle')
  end

end
