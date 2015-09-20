class Player

  attr_reader :choice, :options

  def initialize
    @options = [:rock, :paper, :scissors]
    @choice = ""
  end

  def random_choice
    @choice = options.sample
  end

  def select(choice)
    fail 'Please choose rock, paper or scissors!' unless valid?(choice)
    @choice = choice.to_sym
  end

  private

  def valid?(choice)
    options.include?(choice.to_sym)
  end

end
