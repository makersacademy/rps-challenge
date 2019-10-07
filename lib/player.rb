
class Player

  def initialize(name = "Gladiator")
    @name = name
  end

  def no_name
    if @name.empty?
      "Gladiator"
    else
      @name
    end
  end

end
