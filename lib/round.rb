class Round
  RULES = {
     rock: {rock: :draw, paper: :lose, scissors: :win},
     paper: {rock: :win, paper: :draw, scissors: :lose},
     scissors: {rock: :lose, paper: :win, scissors: :draw}
   }

  attr_reader :name, :shape, :opposition_shape

  def initialize(options)
    @name = options["name"]
    @shape = options["shape"]
    @opposition_shape = options["opposition_shape"]
  end

  def win?
    outcome == :win
  end

  def outcome
    return if @opposition_shape.nil?
    RULES[@shape][@opposition_shape]
  end
end
