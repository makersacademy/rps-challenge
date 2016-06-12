describe AI do

  subject(:ai) { described_class.new } 
  
  it '#weapon returns a random weapon' do
    expect(%w(R P S SP L)).to include(ai.weapon)
  end

  it '#name returns a ais name' do
    expect(ai.name).to eq('Machine')
  end
end
