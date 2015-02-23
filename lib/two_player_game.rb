class TwoPlayerGame

  attr_accessor :player_one, :player_two

  def initialize
    @player_one=nil
    @player_two=nil
  end

  def selections_equal?
    player_one.selection==player_two.selection 
  end

  def determine_winner
    if selections_equal? 
      raise "selections are the same"    
    else
       check_selections           
    end   
  end

  def check_selections
    case player_one.selection
      when :rock
        if player_two.selection==:paper
          player_two
        elsif player_two.selection==:scissors
          player_one
        end    
      when :paper
        if player_two.selection==:scissors
          player_two
        elsif player_two.selection==:rock
          player_one
        end
      when :scissors
        if player_two.selection==:rock
          player_two
        elsif player_two.selection==:paper
          player_one
        end       
    end   
  end  

end  