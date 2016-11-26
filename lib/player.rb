class Player

  attr_reader :name

  def initialize(name)
    raise "Player name must be a string" if is_not_a_string?(name)
    @name = name
  end

  private

    def is_not_a_string?(name)
      name.class != String
    end
    
end
