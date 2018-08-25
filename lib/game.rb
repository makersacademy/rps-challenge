class Game

  attr_reader :number_of_players, :result, :move_counter

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
  end

  def self.instance
    @game
  end

  def initialize(number_of_players, p_1 = Player.new, p_2 = Player.new)
    @number_of_players = number_of_players
    @players = [p_1, p_2]
    @move_counter = 1
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
    p1 = return_move(1)
    p2 = return_move(2)
    if p1 == p2
      @result = "It was not very effective..."
    elsif (p1 == 'Bulbasaur' && p2 == 'Squirtle') || (p1 == 'Squirtle' && p2 == 'Charmander') || (p1 == 'Charmander' && p2 == 'Bulbasaur')
      @result = "#{return_name(1)} used a super effective move!"
    elsif (p1 == 'Bulbasaur' && p2 == 'Charmander') || (p1 == 'Squirtle' && p2 == 'Bulbasaur') || (p1 == 'Charmander' && p2 == 'Squirtle')
      @result = "#{return_name(2)} used a super effective move!"
    end
  end

  private

  def random_move
    ["Bulbasaur", "Squirtle", "Charmander"].sample
  end

end
