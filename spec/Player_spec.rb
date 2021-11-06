require './lib/Player.rb'

describe Player do
  subject(:nico) { Player.new("Nico") }

  it 'returns the player name'do
    expect(nico.name).to eq("Nico")
  end
end
