class Player

attr_reader :name, :selection

def initialize(name:)
  @name = name
end

def option(selection)
 @selection = selection
end

end
