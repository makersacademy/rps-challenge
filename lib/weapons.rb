class Weapon
  attr_reader :name, :inflictions, :weaknesses, :wins_against

  def initialize(params)
    @name = params.fetch(:name, "")
    @inflictions = params.fetch(:inflictions, [])
    @weaknesses = params.fetch(:weaknesses, [])
    @wins_against = []
  end

  def defeats(weapon)
    wins_against << weapon
  end
end
