class Human < Player

  def chooses(choice)
    @hand = choice
    fail 'Invalid Choice' if options.include?(choice) == false
  end
end
