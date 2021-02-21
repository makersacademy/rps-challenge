require_relative "players"
require_relative "score"

class Game
  @@game = nil
  attr_reader :players, :scores, :winner

  def initialize(names, player_class = Player, score_class = Score)
    @Player = player_class
    @Score = score_class
    @winner = nil
    if names.is_a?(String) or names.length == 1
      create_players([names])
      create_player(2, "Talos, son of Hephaestus", true)
    else
      create_players(names)
    end
    @scores = {1 => 0, 2 => 0}
  end

  # def self.store(game)
  #   @@game = game
  # end

  # def self.create (names)
  #   @@game = Game.new(names)
  # end

  # def self.instance
  #   @@game
  # end

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
    results = @Score.new(@players)
    @winner = results.winner?
    if results.draw?
      @scores[1] += 1
      @scores[2] += 1
      return "draw"
    else
      @scores[@winner.ID] += 1
    end
    return @winner
  end

  def new_round
    @players.each{ |player| player.reset }
  end

  # def self.players
  #   @players
  # end

  def names
    @players.map{ |player| player.name }
  end

  private

  def create_players(names)
    @players = []
    names.each_with_index{ |name, i| create_player(i+1, name)}
  end

  def create_player(id, name, bot = false)
    @players << @Player.new(id, name, bot)
  end

end