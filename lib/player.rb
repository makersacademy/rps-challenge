require_relative "rps_rules"

class Player
  CHOICES = RPSRules::CHOICES
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

  def has_chosen?
    !!@choice
  end

  def reset_choice
    @choice = nil
  end

  private
  def random_item
    CHOICES.sample
  end

end
