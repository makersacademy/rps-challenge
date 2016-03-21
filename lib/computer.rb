class Computer

    def weapon
      weapon = {1 => 'rock', 2 => 'paper', 3=> 'scissors'}
      weapon[rand]
    end

private

    def rand
      Kernel.rand(1..3)
    end

    def matcher(weapon)
      match={
        'rock' => 'scissors', 
        'scissors' => 'paper',
        'paper' => 'rock'}
      match[weapon]
    end
end