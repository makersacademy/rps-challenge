class Player

  RPS = [:rock, :paper, :scissors]

  attr_reader :choice

  def initialize
    @choice = ""
  end

  def select(choice)
    fail 'Please choose rock, paper or scissors!' unless valid?(choice)
    @choice = choice.to_sym
  end

  private

  def valid?(choice)
    RPS.include?(choice.to_sym)
  end

end
