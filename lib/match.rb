require_relative './player'
require_relative './adjudicator'

class Match
  attr_reader :play1, :play2, :game_type, :result

  def initialize(play1,
    play2: "Computer",
    game_type: "single",
    player_class: Player,
    adjudicator_class: Adjudicator)
    @play1 = player_class.new(play1)
    @play2 = player_class.new(play2)
    @game_type = game_type
    @adjudicator_class = adjudicator_class
  end

  def self.create(player1, player2 = "Computer")
    if player2 == "Computer" || player2 == ""
      @match = Match.new(player1)
    else
      @match = Match.new(player1, play2: player2, game_type: "multi")
    end
  end

  def self.instance
    @match
  end

  def do_move(player, move)
    player.make_move(move)
    play2.make_random_move if @game_type == "single"
  end

  def see_move(player)
    player.move
  end

  def find_winner
    judge = @adjudicator_class.new(@play1, @play2)
    judge.who_wins
    @result = judge.result
  end

end
