class Attack

  def initialize
  end

  def calculate_attack(attack_1,attack_2 = generate_random_attack)

    return 0 if attack_1 == attack_2
    case
      when attack_1 == "Rock"
        if attack_2 == "Scissors"
          return 1
        else
          return 2
        end

      when attack_1 == "Scissors"
        if attack_2 == "Paper"
          return 1
        else
          return 2
        end

      when attack_1 == "Paper"
        if attack_2 == "Rock"
          return 1
        else
          return 2
        end
      end
    end

  def generate_random_attack
    random_number = Kernel.rand(3)
    moves = ["Rock","Paper","Scissors"]
    moves[random_number]
  end

end


p Kernel.rand(3)
