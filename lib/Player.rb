class Player

  attr_reader :name, :type, :score, :move

  CPU_NAMES = ["Ash", "Bishop", "Cortana", "Deep Thought", "GLaDOS", "HAL 9000",
              "Holly", "KITT", "Kryten", "Max Headroom", "MCP", "Skynet"]

  def initialize(name, type = :human)
    @type = type
    @type == :human ? @name = name : @name = CPU_NAMES.sample
    @score = 0
  end

  def make_move(game, move)
    p move
    move = game.possible_moves.sample if @type == :cpu
    @move = move.to_sym
  end

  def increase_score
    @score += 1
  end

end
