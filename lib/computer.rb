
class Computer

RPS = ['Rock', 'Paper', 'Scissors']

attr_reader :option2

def initialize
  @option2
end

def random_select
@option2 = RPS.sample
end

end
