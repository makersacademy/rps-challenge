module Choice
  attr_reader :kills, :name

  def <=>(other)
    return 0 if draws_against? other
    can_kill?(other) ? 1 : -1
  end

  private

  def can_kill?(other)
    kills.include? other.name
  end

  def draws_against?(other)
    name == other.name
  end
end
