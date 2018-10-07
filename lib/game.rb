class Game

  RULES = { charmander: :bulbasaur,
            squirtle: :charmander,
            bulbasaur: :squirtle }

  attr_reader :number_of_players, :result, :move_counter

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
  end

  def self.instance
    @game
  end

  def initialize(number_of_players, player = Player, computer = Computer)
    @number_of_players = number_of_players
    number_of_players == 1 ? @players = [player.new, computer.new] : @players = [player.new, player.new]
    @move_counter = 1 # Track if player1 turn or player2 turn
  end

  def save_name(name1, name2 = nil)
    @players.first.name = name1
    @players.last.name = name2 if name2 != nil
  end

  def save_move(move, player_number)
    @players.first.move = move if player_number == 1
    @players.last.move = move if player_number == 2
    @move_counter += 1
  end

  def return_name(number)
    return @players.first.name if number == 1
    return @players.last.name if number == 2
  end

  def return_move(number)
    return @players.first.move.to_s.capitalize! if number == 1
    return @players.last.move.to_s.capitalize! if number == 2
  end

  def determine_winner
    @move_counter = 1 # reset to initialized value
    if @players.first.beats?(@players.last.move) == true
      @result = "#{return_name(1)} used a super effective move!"
    elsif @players.last.beats?(@players.first.move) == true
      @result = "#{return_name(2)} used a super effective move!"
    else
      @result = "It was not very effective..."
    end
  end

end
