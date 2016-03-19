class Computer

  def choice
    WEAPONS.sample
  end

  private

    WEAPONS = ['Rock', 'Paper', 'Scissors'].freeze

end
