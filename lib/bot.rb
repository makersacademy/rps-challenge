class Bot < Player
  def random_option
    @choice = @options.sample
  end
end
