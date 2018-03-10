class Results
  attr_reader :choice1, :choice2, :name1, :name2

  def initialize(name1, name2, choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
    @name1 = name1
    @name2 = name2
  end

  def winner
    @decide = {
    :Rock => { Paper: "#{name2} won", Scissors: "#{name1} won", Rock: 'You tied' },
    :Paper => { Paper: 'You tied', Scissors: "#{name2} won", Rock: "#{name1} won" },
    :Scissors => { Paper: "#{name1} won", Scissors: 'You tied', Rock: "#{name2} won" } }
  end

  def declare
    @decide[@choice1.turn.to_sym][@choice2.turn.to_sym]
  end

end
