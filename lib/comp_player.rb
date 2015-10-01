class Computer
  def shape
    [:rock, :paper, :scissors, :lizard, :spock].sample
  end
end

# class Computer < Player
#   def initialize(shape)
#     super(shape)
#     shape = @shapes.sample
#   end
# end
