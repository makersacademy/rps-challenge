class Computer
  attr_reader :hand

  def initialize
    @hand = computers_hand
  end

  private
    def computers_hand
      ['Rock', 'Paper','Scissors'].sample
    end
    
end


 # require './lib/computer'
