require_relative 'constants'
require_relative 'human'
require_relative 'ai'

class Game

  include Constants

  def self.create(player_name:, players:, player_class:Human, ai_class:Ai)
    if @instance.nil?
      player1 = player_class.new(name:player_name)
      player2 = ai_class.new if players == 1
      @wait = players == 2
      @instance = self.new(player1: player1,player2: player2)
      @player_class = player_class
      @number_of_players = players
    else
      return true unless players == @number_of_players
      @wait = false
      @instance.add_player(player_name: player_name)
    end
    false
  end

  def self.create_ai(player1_name:, player_class:Human, ai_class:Ai)
    @player_class = player_class
    @number_of_players = 1
    player1 = player_class.new(name:player1_name)
    player2 = ai_class.new
    @instance = self.new(player1:player1, player2:player2)
  end

  def self.create_human(player1_name:, player_class:Human)
    @player_class = player_class
    @number_of_players = 2
    player1 = @player_class.new(name:player1_name)
    @instance = self.new(player1:player1)
  end

  def self.wait?
    @wait
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
    @result = []
    @result << check_winner(player1, player2)
    @result << check_winner(player2, player1)
    @result.flatten!
  end

  def result
    @result
  end

  private

  def check_winner(p1, p2)
    moves={}
    MOVES.each{|k,v| moves[k]= v.flatten.map!(&:keys).flatten}

    result = []
    if moves[p1.move].include?(p2.move)
      p1.win!
      @result << p1.name
      @result << p1.move.to_s
      @result << MOVES[p1.move].first[p2.move]
      @result << p2.move.to_s
    else
      p1.not_win!
    end
    result
  end
end
