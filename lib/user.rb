
class User

attr_reader :name, :option

def initialize(name)
  @name = name
  @option
end

def choose(option)
  @option =  option
end

end
