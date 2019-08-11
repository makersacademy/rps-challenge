class NPC
  def initialize(seed=nil)
    @rng = Random.new(seed) if seed != nil
  end

  def move
    if @rng != nil
      [0,1,2].sample(random: @rng)
    else
      [0,1,2].sample
    end
  end
end
