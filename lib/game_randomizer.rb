class GameRandomizer

attr_reader :option

  def randomize
    @option = ["Scissors","Paper","Rock"].sample
  end

end
