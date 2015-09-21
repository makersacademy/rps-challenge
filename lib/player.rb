class Player

  attr_reader :object, :name

  def choose(object)
    objects = Game::RULES.keys
    fail 'Incorrect option selected' unless objects.include? object
    @object = object
  end
end
