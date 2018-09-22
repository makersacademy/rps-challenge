class Computer < Player
  def random_option
    @chosen_option = @options.sample
  end
end
