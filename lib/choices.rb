class Choices

    attr_reader :choice_list

    def initialize
        @choice_list = ["Rock", "Paper", "Scissors"]
    end


    def get_choices
        @choice_list
    end
end