class Bot < Player
  def random_option
    @weapon = @options.sample
  end
end
