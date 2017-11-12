class RuleBook
  attr_reader :rules

  def initialize(enemies_class = Enemies)
    @rules = [
      enemies_class.new(:Rock, :Paper),
      enemies_class.new(:Paper, :Scissors),
      enemies_class.new(:Scissors, :Rock)
    ]
  end
end
