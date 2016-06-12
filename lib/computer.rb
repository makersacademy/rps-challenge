class Computer

  attr_reader :choice

  def initialize
    @choice = select_weapon
  end

  private

    def select_weapon
      [:Rock, :Paper, :Scissors].sample
    end

end
