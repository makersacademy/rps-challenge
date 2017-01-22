class Game
  attr_reader :player, :choice, :option

def initialize(player,choice)
  game = Game.new
  @player = player
  @choice = choice
end
def option
  rps = ["rock","paper","scissors"]
  @option = [rand(0..2)]
end

# def get_result(@choice, @auto_option)
#   case result
#   when @choice == @auto_option
#     return "A tie!!"
#   when

end
