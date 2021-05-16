class MachineChoice

    CHOICES = [:rock, :paper, :scissors, :lizard, :spock]
    # I tried to include this in the play.rb class but I couldn't get it to work in that way.
    def machine_choice
        CHOICES.sample
    end

end