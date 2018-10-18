class Player
  CHOICES = ["Rock", "Paper", "Scissors"]
  attr_reader :name, :choice

  def initialize(name)
    @name = name || "Computer" # will use computer if name is nil, i.e. if params[:name_two] doesn't get filled in
  end

  def choose(item)
    @choice = item
  end

  def choose_random
    @choice = random_item
  end

  private
  def random_item
    CHOICES.sample
  end

end
