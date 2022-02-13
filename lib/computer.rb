class Computer

    SHAPES = [:rock, :paper, :scissors]

    def move
      SHAPES.sample.to_s.capitalize
    end
    
  
end