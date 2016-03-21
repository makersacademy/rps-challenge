require_relative 'constants'
require_relative 'human'
require_relative 'ai'

class Game

  include Constants

  def self.create_ai(player1_name:, player_class:Human, ai_class:Ai)
    @player_class = player_class
    @number_of_players = 1
    player1 = player_class.new(name:player1_name)
    player2 = ai_class.new
    @instance = self.new(player1:player1, player2:player2)
  end

  def self.create(player1_name:, player_class:Human)
    @player_class = player_class
    @number_of_players = 2
    player1 = @player_class.new(name:player1_name)
    @instance = self.new(player1:player1)
  end

  def self.instance
    @instance
  end

  def self.player_class
    @player_class
  end

  def self.number_of_players
    @number_of_players
  end

  def self.reset
    @instance = nil
    @number_of_players = nil
    @player_class = nil
  end if

  def initialize(player1:, player2:nil)
    @players = [player1]
    @players << player2 unless player2.nil?
    @in_progress = false
  end

  def add_player(player_name:)
    @players << self.class.player_class.new(name:player_name)
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def in_progress?
    @in_progress
  end

  def in_progress!
    @in_progress = true
  end if

  def turn_finished!
    @players.each(&:turn_finished!)
  end

  def turn_finished?
    @players.inject(true) {|result, player| result && !player.played?}
  end

  def both_played?
    @players.inject(true) {|result, player| result && player.played?}
  end

  def restart!
    @in_progress = false
    @players.each(&:restart!)
  end

  def find_opponent(player_name)
    @players.select{|player| return player if player.name != player_name}
  end

  def find_me(player_name)
    @players.select{|player| return player if player.name == player_name}
  end

  def find_winner(player1:@players[0],player2:@players[1])
    moves={}
    MOVES.each{|k,v| moves[k]= v.flatten.map!(&:keys).flatten}

    if moves[player1.move].include?(player2.move)
      player1.win!
      winner = player1
      loser = player2
    else
      player1.not_win!
    end

    if moves[player2.move].include?(player1.move)
      player2.win!
      winner = player2
      loser = player1
    else
      player2.not_win!
    end

    @result = []
    unless winner.nil?
      @result << winner.name
      @result << winner.move.to_s
      @result << MOVES[winner.move].first[loser.move]
      @result << loser.move.to_s
    end
  end

  def result
    @result
  end
end
