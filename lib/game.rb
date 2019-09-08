class Game
  class Full < RuntimeError; end;
  class DuplicatePlayer < RuntimeError; end;

  attr_reader :player1, :player2, :name

  def initialize(name, rules)
    @name = name
    @rules = rules
    @players = []
    @in_play = false
  end

  def add_player(player)
    raise Full if game_full?
    raise DuplicatePlayer if already_exists?(player)

    @players << player
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def ready?
    game_full?
  end

  def play
    unless @in_play
      @players.each(&:new_turn)
      @in_play = true

      until finished?
        @players
          .select { |p| p.chosen_move.nil? }
          .each { |p| p.request_move(@rules.valid_moves) }
      end

      @in_play = false
    end
  end

  def winner
    @rules.winner(player1, player2)
  end

  def finished?
    !player1.chosen_move.nil? && !player2.chosen_move.nil?
  end

  private

  def already_exists?(player)
    @players.find_index { |p| p.id == player.id }
  end

  def game_full?
    @players.size == 2
  end
end