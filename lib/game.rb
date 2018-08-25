class Game

  attr_reader :number_of_players, :result, :move_counter

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
  end

  def self.instance
    @game
  end

  def initialize(number_of_players, player_class = Player)
    @number_of_players = number_of_players
    @players = [player_class.new, player_class.new]
    @move_counter = 1
  end

  def save_name(name1, name2 = nil)
    @players.first.save_name(name1)
    name2 == nil ? @players.last.save_name('Computer') : @players.last.save_name(name2)
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
      @result = "It's a draw!"
    elsif (p1 == 'Rock' && p2 == 'Scissors') || (p1 == 'Paper' && p2 == 'Rock') || (p1 == 'Scissors' && p2 == 'Paper')
      @result = "#{return_name(1)} wins!"
    elsif (p1 == 'Scissors' && p2 == 'Rock') || (p1 == 'Rock' && p2 == 'Paper') || (p1 == 'Paper' && p2 == 'Scissors')
      @result = "#{return_name(2)} wins!"
    end
  end

  private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

end
