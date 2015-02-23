class Player
  # attr_reader :name
  attr_reader :choice

  def initialize(name)
    @name =name
  end

  def choice(option)
    @choice = option
  end

  def name
    @name
  end

end

# class Game

#   def initialize
#     @players = []
#   end

#   def add_player(player)
#     @players << player
#   end

#   def choice(option)
#     @choice = option
#   end

# end









# class Player

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def choice(option)
#     @choice = option
#   end


#   def name
#     @name
#   end

# end