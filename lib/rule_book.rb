class RuleBook
  attr_reader :rules

  def initialize(enemies_class = Enemies)
    @rules = [
      enemies_class.new(:stone, :paper),
      enemies_class.new(:paper, :scissors),
      enemies_class.new(:scissors, :stone)
    ]
  end
end
