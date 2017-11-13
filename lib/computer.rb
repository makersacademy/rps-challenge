class Computer
  attr_reader :name, :wins

  def initialize
    @name = %w(Leonard Sheldon Wolowitz Koothrappali).sample
    @wins = 0
  end
end
