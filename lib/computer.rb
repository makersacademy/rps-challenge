class Computer

  OPTIONS = ['Rock', 'Paper', 'Scissors'].freeze

  def attack
    OPTIONS.sample
  end
end
