class Options

  attr_reader :choices

  def initialize
    @choices = []
  end

 # Need to test
  def add_choice(*new_entries)
    new_entries.each { |new_entry| choices << new_entry unless choice_added?(new_entry) }
  end

  private

  def choice_added?(choice)
    choices.include?(choice)
  end

end
