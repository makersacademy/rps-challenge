class Game
  attr_reader :name, :choice, :option

def initialize(options)

  @name = options["name"]
  @choice = options["choice"]
  @option = options["option"]
  
end
#this will return the value for computer
def random_option
  rps = ["rock","paper","scissors"]
  @option = rps[rand(0..2)]
end

# def get_result(@choice, @auto_option)
#   case result
#   when @choice == @auto_option
#     return "A tie!!"
#   when

end
