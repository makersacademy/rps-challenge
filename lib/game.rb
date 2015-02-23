class Game

  attr_reader :selection

  def get_selection
    @selection = [:rock,:paper,:scissors].sample
  end  

  def selections_equal?(player)
    self.get_selection
    player.selection==selection
  end

  def determine_winner(player)
    if selections_equal?(player) 
      :draw
    else
      check_selections(player)           
    end   
  end

  def check_selections(player)
    case selection
      when :rock
        if player.selection==:paper
          player
        elsif player.selection==:scissors
          self
        end    
      when :paper
        if player.selection==:scissors
          player
        elsif player.selection==:rock
          self
        end
      when :scissors
        if player.selection==:rock
          player
        elsif player.selection==:paper
          self
        end       
    end   
  end  
end  

 