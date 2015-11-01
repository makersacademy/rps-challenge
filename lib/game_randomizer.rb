class GameRandomizer

attr_reader :option

def initialize
  @options = ["Scissors","Paper","Rock"]
  @option =""
end

def randomize
  @option = @options.sample
  @option
end

end
