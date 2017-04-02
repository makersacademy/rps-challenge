# Execute random computer selection and send back number.

class Computer

  attr_reader :choice
  attr_writer :choice

  DEFAULT_CHOICE = "No choice made."

    def initialize(choice = DEFAULT_CHOICE)
      @choice = DEFAULT_CHOICE
    end

    def choose_rock
      @choice = "rock"
    end

    def choose_paper
      @choice = "paper"
    end

    def choose_scissors
      @choice = "scissors"
    end

    def random_number
      rand(101)
    end

    def computer_choice
      number = random_number
        if number < 34
          choose_rock
        elsif number >= 34 && number < 67
          choose_paper
        else
          choose_scissors
        end
    end
    
  end
