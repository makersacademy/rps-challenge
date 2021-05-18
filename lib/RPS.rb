class RPS

def initialize

  my_array = ["rock", "paper", "scissors"]
  @my_array = my_array
  

end

  def rock_paper_scissors
    @my_array[rand(@my_array.count)]
  end

def self.instance
    @rps ||= RPS.new
    
  end

end

