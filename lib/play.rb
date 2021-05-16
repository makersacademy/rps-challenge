class Play

    # I initially tried to use strings instead of symbols but it did not work properly. Symbols became easier to manipulate.
    WIN_DRAW_LOSE = {
        rock: {rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose},
        paper: {rock: :win, paper: :draw, scissors: :lose, spock: :win, lizard: :lose},
        scissors: {rock: :lose, paper: :win, scissors: :draw, spock: :lose, lizard: :win},
        lizard: {rock: :lose, paper: :win, scissors: :lose, spock: :win, lizard: :draw},
        spock: {rock: :win, paper: :lose, scissors: :win, spock: :draw, lizard: :lose}
    }

    attr_reader :name, :choice, :machine_choice

    def initialize(choices)
        @name = choices["name"]
        @choice = choices["choice"]
        @machine_choice = choices["machine_choice"]
    end

    def draw?
        outcome == :draw
    end

    def win?
        outcome == :win
    end

    def lose?
        outcome == :lose
    end

    private
    
    def outcome
        return if @machine_choice.nil?
        WIN_DRAW_LOSE[@choice][@machine_choice]
    end

end