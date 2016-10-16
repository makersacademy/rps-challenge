class Weapon



    def rock
      @choice[:rock]
    end

    def paper
      @choice[:paper]
    end

    def scissors
      @choice[:scissors]
    end

    def randomiser
      @choice.to_a.sample.last
    end

    def random_choice
      randomiser
    end

    private

    def initialize
      @choice = { rock: "Rock",
                  paper: "Paper",
                  scissors: "Scissors"
      }
    end

  end
