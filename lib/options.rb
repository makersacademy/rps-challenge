class Options

  attr_reader :choices

  def initialize
    @choices = []
  end

  def add_choice(choice)
    fail "You have already added this." if choice_added?(choice)
    @choices << choice
  end

  private

  def choice_added?(choice)
    choices.include?(choice)
  end

end
