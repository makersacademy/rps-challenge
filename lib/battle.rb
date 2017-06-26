class Battle
  attr_reader :something, :selection
  def initialize
         @something = ['Rock', 'Paper', 'Scissors']
         @selection = @something.sample
   end
 end  
