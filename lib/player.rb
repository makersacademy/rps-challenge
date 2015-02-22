class Player
  
  attr_reader :name, :shape

  def initialize(options={})
    @name = options.fetch :name, nil
  end

  def pick(shape)
    @shape = shape
  end
end

# class Computer < Player
#   def choose_weapon
#     # @pick = [1,2,3].sample
#   end
# end








