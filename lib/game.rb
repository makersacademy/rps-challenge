require_relative "players"

class Game
  @@game = nil
  attr_reader :players

  def initialize(names, player_class = nil, bots = 1)
    @Player = player_class
    names = [names] if names.is_a?(String)
    create_players(names)
    create_bots(bots)
  end

  def self.store(game)
    @@game = game
  end

  def self.create (names)
    @@game = Game.new(names)
  end

  def self.instance
    @@game
  end

  def real_players
    real = []
    @players.each{ |player| real << player unless player.bot}
    puts real.length
    return real
  end

  def finished?
    !@players.map{|player| player.move }.include?(nil)
  end

  def whose_turn?
    real_players.each do |player|
      return [player.ID, player.name] if player.move == nil
    end
    raise "All players have taken their turns"
  end

  def add_move player_id, move
    player = @players[player_id - 1]
    raise "Player #{player_id} already has a move" unless player.move == nil
    player.enter_move(move)
  end

  def score
    raise "Players haven't entered moves" unless finished?
  end

  private

  def create_players(names)
    @players = []
    names.each_with_index{ |name, i| create_player(i+1, name)}
  end

  def create_player(id, name, bot = false)
    @players << @Player.new(id, name, bot)
  end

  def create_bots n_bots
    n_players = @players.length
    (1..n_bots).each{ |i| create_player(i+n_players, bot_name(i), bot = true)}
  end

  def bot_name(i)
    case i
    when 1
      str = "1st"
    when 2
      str = "2nd"
    when 3
      str = "3rd"
    else
      str = "#{i}th"
    end
    "Lord bottington, the " + str
  end
end