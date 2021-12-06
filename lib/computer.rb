class Computer
   attr_reader :compmove
    def compmove
        compmove = ["rock", "paper", "scissors"].sample
    end
end