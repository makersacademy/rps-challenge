class Computer

attr_reader :options, :choice_made

  OPTIONS = ["Rock", "Paper", "Scissors"]

  def choice
    @choice_made = OPTIONS.sample
  end

end
