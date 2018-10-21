require "./lib/round.rb"
require "./lib/player.rb"

class Game

  attr_reader :players, :rounds, :round

  def self.instance
    @game
  end

  def self.create()
    @players = Array.new
    @game = Game.new()
  end

  def assign_players(players)
    @players = Array.new
    @rounds = Array.new
    if players[0].is_a?(String)
      players.each {|player|
        @players.push(Player.new(player))
      }
    else @players = players
    end
  end

  def start_round(round = Round.new())
    @round = round
  end

  def player_plays(player,move)
    @round.player_plays(player,move)
  end

  def finish_round
    return if !@round
    @round.get_round_winner(@players)
    @rounds.push(@round)
    @round.winners
  end

  def finish_game(judge = Judge.new)
    winners = judge.decide_game_winner(@players)
  end

 def rounds_played
   @rounds.length
 end

 def players_in_game
   @players.length
 end

end
