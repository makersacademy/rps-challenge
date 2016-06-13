require_relative 'log'
require_relative 'player'
require_relative 'engine'

class Game

  MAX_ROUNDS = 15

	attr_reader :player1, :player2, :log, :rounds

	def initialize(player1, player2 = nil, log = nil, engine = nil)
		@player1 = player1
    @player2 ||= Player.new('Computer')
    @log ||= Log.new
    @rounds = 0
    @engine ||= Engine.new
	end


	def self.create(player1)
		@game = Game.new(player1)
	end

	def self.instance
		@game
	end


  def is_over
    @rounds >= MAX_ROUNDS
  end

  def round(move)
    if @rounds < MAX_ROUNDS

      choice_p1 = player1.play(move)
      choice_p2 = player2.play

      log.update_history(player1, choice_p1)
      log.update_history(player2, choice_p2)

      winner = resolve_round(choice_p1, choice_p2)

      if winner == nil
        @log.add_tie
      else
        winner.win
        @log.add_win(winner)
      end

      @rounds += 1
    end
  end

  def result
    if player1.score > player2.score
      "#{player1.name.capitalize} wins"
    elsif player1.score < player2.score
      "#{player2.name.capitalize} wins"
    else
      "TIES!"
    end
  end

  private

  def resolve_round(choice_p1, choice_p2)
    result = @engine.run(choice_p1, choice_p2)
    if result == 1
      return player1
    elsif result == 2
      return player2
    else
      return nil
    end
  end

end
